// Dumps the board diagrams of the OrbitronTactics rules page straight out of
// the game's own move validators, so a diagram cannot disagree with the engine.
//
//   dart --packages=<game>/.dart_tool/package_config.json \
//        scripts/dump_orbitron_rules.dart apps/orbitrontactics/pages
//
// Writes boards.tsv:  board  row  col  mark  piece  color
//   mark  = self | ally | enemy | move | capture | jump | field
//   row 0 is white's back rank; white is drawn at the bottom.
// Run by `make import-fleets`; never on CI.
import 'dart:io';

import 'package:orbitron_tactics/core/game_logic/engine/game_engine.dart';
import 'package:orbitron_tactics/core/game_logic/engine/power_field_generator.dart';
import 'package:orbitron_tactics/core/game_logic/models/board_state.dart';
import 'package:orbitron_tactics/core/game_logic/models/piece.dart';
import 'package:orbitron_tactics/core/game_logic/models/position.dart';
import 'package:orbitron_tactics/core/game_logic/validators/validator_registry.dart';

final out = StringBuffer();

void row(String board, Position p, String mark, [Piece? piece]) => out.writeln(
    [board, p.row, p.col, mark, piece?.type.name ?? '', piece?.color.name ?? '']
        .join('\t'));

const white = PlayerColor.white;
const black = PlayerColor.black;

/// One diagram: [piece] at [at] among [others], every legal move marked.
void moves(String board, Piece piece, Position at,
    [Map<Position, Piece> others = const {}]) {
  var state = BoardState.empty(const []).setPiece(at, piece);
  others.forEach((p, o) => state = state.setPiece(p, o));
  row(board, at, 'self', piece);
  others.forEach(
      (p, o) => row(board, p, o.color == piece.color ? 'ally' : 'enemy', o));
  for (final to in validatorFor(piece).getLegalMoves(state, at, piece.color)) {
    final target = state.pieceAt(to);
    // A straight three-square hop is the bishop's snipe - the one move in the
    // game that is a jump for a piece that otherwise slides.
    final jump = piece.type == PieceType.bishop &&
        !piece.isLastWarrior &&
        to.col == at.col;
    row(board, to, target != null ? 'capture' : (jump ? 'jump' : 'move'), target);
  }
}

Position at(int r, int c) => Position(row: r, col: c);
Piece w(PieceType t) => Piece(type: t, color: white);
Piece b(PieceType t) => Piece(type: t, color: black);

void main(List<String> args) {
  final dir = args.isEmpty ? '.' : args.first;

  // The pawn's forward diagonals move and capture; one of each is shown.
  moves('pawn', w(PieceType.pawn), at(3, 3), {at(4, 4): b(PieceType.pawn)});
  moves('knight', w(PieceType.knight), at(3, 3));
  moves('knight-blocked', w(PieceType.knight), at(3, 3),
      {at(4, 3): w(PieceType.rook)});
  // Blockers on the file and one diagonal: the slide stops, the snipe does not.
  moves('bishop', w(PieceType.bishop), at(2, 3), {
    at(3, 3): w(PieceType.pawn),
    at(4, 3): b(PieceType.pawn),
    at(4, 5): b(PieceType.knight),
  });
  moves('rook', w(PieceType.rook), at(3, 3), {at(3, 5): b(PieceType.pawn)});
  moves('queen', w(PieceType.queen), at(3, 3));
  moves('king', w(PieceType.king), at(3, 3));
  moves('last-warrior',
      w(PieceType.king).copyWith(isLastWarrior: true), at(3, 3));

  for (final color in [white, black]) {
    for (final p in GameEngine.defaultFormation(color).placements) {
      row('start', p.position, color == white ? 'ally' : 'enemy', p.piece);
    }
  }

  for (var v = 0; v < PowerFieldGenerator.variants.length; v++) {
    for (final p in PowerFieldGenerator.variants[v]) {
      row('fields-$v', p, 'field');
    }
  }

  File('$dir/boards.tsv').writeAsStringSync(out.toString());
  stdout.writeln('  boards.tsv ${out.toString().split('\n').length - 1} rows');
}
