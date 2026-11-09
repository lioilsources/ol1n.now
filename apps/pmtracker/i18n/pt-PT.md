---
tagline: Registo de horas por obra que confirma o local — e não guarda a tua localização
---
As empresas de construção e as equipas de assistência técnica ainda registam as horas em papel, pelo WhatsApp e no Excel. O encarregado não tem forma de confirmar quem esteve onde, e o trabalhador não tem forma de comprovar horas extraordinárias. O PMTracker mede o tempo numa obra concreta e sabe, em cada registo, se a pessoa esteve mesmo no local.

### A localização só duas vezes, e depois é apagada

As coordenadas são enviadas **apenas ao iniciar e ao parar** a medição. O servidor confirma que o ponto está dentro da geovedação da obra, guarda um único dado, «esteve / não esteve no local», e apaga as coordenadas. Sem mapa de deslocações, sem seguimento em segundo plano. O trabalho fora da geovedação pode ser autorizado através de uma exceção que fica registada no registo de auditoria.

### Os perfis são controlados pela base de dados, não pela app

Um membro da equipa regista tempo nas obras a que está atribuído. Um gestor gere ainda as obras e a escala do pessoal e vê relatórios. Um administrador gere os utilizadores. As permissões são impostas por regras diretamente na base de dados, por isso nem um cliente modificado as consegue contornar.

### Estado

É um MVP: estão prontos o modelo de dados, os perfis, a verificação da geovedação e os ecrãs de início de sessão, medição, obras, escala, relatórios e administração. O modo offline para obras sem rede está preparado, mas ainda não está ativado, e a app ainda não funciona em nenhuma empresa. Para iniciar sessão, precisas de uma conta dada pelo teu empregador.

### Para beta testers

Por agora, a versão de teste é só para **Android**. Funciona com uma empresa de teste, «Stavby s.r.o.», com pessoas inventadas e duas obras: a remodelação de escritórios na Praça Venceslau, em Praga, e a climatização na Praça da Liberdade, em Brno. Os dados podem ser apagados a qualquer momento. Não há registo na app; a conta é-te enviada por quem te convidou para testar.

**Instalação**

1. No telemóvel, descarrega o APK com o botão da secção **Transferências** acima (ou em [GitHub Releases](https://github.com/lioilsources/PMTracker/releases)).
2. Abre o ficheiro descarregado e permite a instalação de fontes desconhecidas quando o Android perguntar.
3. O Google Play Protect pode avisar que não conhece a app. É porque não vem do Google Play; escolhe instalar na mesma.
4. Abre o **PMTracker** e inicia sessão com a conta que recebeste na mensagem.

**O que experimentar como membro da equipa**

- No separador **Výkaz** (Folha de horas), toca em **Zahájit výkaz** (Iniciar folha de horas), escolhe uma obra e permite o acesso à localização. No local da obra, aparece por baixo do tempo um «Na místě» (No local) a verde.
- Se não estiveres no local, a app pede um motivo. Não faz mal: escreve, por exemplo, «test» e o registo é guardado com uma nota de que foi feito fora do local.
- Passado algum tempo, para a medição com o botão **Ukončit výkaz** (Terminar folha de horas). O «Dnes celkem» (Total de hoje) aumenta.
- No separador **Zakázky** (Obras), abre os detalhes: morada, tamanho da geovedação, quem está atribuído e a lista de tarefas.

**O que experimentar como gestor**

- Vês ainda **Roster** (a tua equipa) e **Reporty** (Relatórios) com o tempo trabalhado por pessoa e por obra. No relatório só contam as medições paradas; o período muda-se no canto superior direito.
- Para mudar de conta, termina a sessão (ícone no canto superior direito do separador **Výkaz**).

**O que ainda não esperar**

- Sem internet a app não funciona; o modo offline chega mais tarde.
- Uma medição esquecida não para sozinha; para-a manualmente.
- Ainda não há versão para iPhone para testers.

Envia erros ou ideias a quem te convidou: o que estavas a fazer, o que aconteceu e com que conta. Uma captura de ecrã ajuda muito.
