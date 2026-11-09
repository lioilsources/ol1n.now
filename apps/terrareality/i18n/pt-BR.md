---
tagline: Alugar um apartamento, da busca no mapa ao aluguel pago — para proprietários, inquilinos e a operadora
---
TerraReality é uma plataforma de aluguel de longo prazo de apartamentos e quartos. Começa em Praga e arredores, mas os dados estão preparados desde o início para outros países da Europa Central (jurisdição do contrato, moeda, idioma). Ao contrário de um portal de anúncios, ela não para no contato: acompanha proprietário e inquilino durante toda a locação — busca, mensagens, proposta, visita, contrato e assinatura, até os pagamentos e o acompanhamento deles.

A plataforma tem quatro faces. **Quem procura** busca no mapa ou simplesmente escreve o que quer. **O proprietário ou administrador** tem um painel no estilo de loja virtual: anúncios, interessados, contratos, banco, carteira e faturamento. **O inquilino** tem seu portal com o contrato, os pagamentos e os QR codes. **A operadora** tem um backoffice para aprovações, moderação e configurações. Além disso, um app para iOS e Android.

As capturas de tela são do ambiente de desenvolvimento com dados de teste: os nomes são fictícios, as fotos dos apartamentos são ilustrativas e as sugestões da IA foram geradas em modo offline, sem modelo de linguagem.

### Busca no mapa e por chat

O mapa vai da região ao município, ao bairro e até a rua, e em cada nível de zoom mostra quantas ofertas há e onde. Ao lado ficam os filtros (tipo, preço, área, planta, mobília, pets, transporte) com a contagem de cada opção. Quem não quer clicar escreve, por exemplo, "2+kk até 25 000 em Praga 6 com cachorro e varanda" — a plataforma ajusta os filtros e o enquadramento do mapa a partir da frase e mostra como a entendeu. A busca pode ser salva, e novas ofertas chegam com um aviso.

### Anúncio com ajuda da IA — sempre com a aprovação de uma pessoa

O proprietário informa o endereço a partir do registro oficial de endereços (RÚIAN), as características, as fotos e o texto. A IA sabe sugerir características a partir da descrição e das fotos (elevador, varanda, tipo de construção…) e escrever o texto do anúncio em tcheco e em inglês. Mas uma sugestão nunca é salva sozinha: o proprietário vê o que a IA propõe, marca o que está certo e só então isso é aplicado. Antes da publicação, uma pessoa aprova o anúncio no backoffice. Em cada anúncio, o proprietário pode incluir perguntas para os interessados (por exemplo, "Você tem animal de estimação?").

### Mensagens

O interessado escreve ao proprietário direto do anúncio; as mensagens chegam em tempo real, com confirmação de leitura e anexos. Até a assinatura do contrato, a plataforma oculta números de telefone e e-mails no texto, para que nem a negociação nem os pagamentos saiam dela — e o interessado vê o aviso "não pague nada antes da visita". Quem não está online recebe um push ou um e-mail. Uma conversa suspeita pode ser denunciada com um clique.

### Propostas, dividir apartamento e escolha do inquilino

O interessado envia a proposta sozinho ou por um grupo de colegas de apartamento: cria um grupo, convida os outros por e-mail, eles combinam no chat do grupo e a proposta só chega ao proprietário quando todos concordam. O proprietário vê um resumo dos interessados com as respostas às suas perguntas, o status da verificação e um breve resumo da IA (de novo, só uma sugestão). A plataforma não coleta dados protegidos como idade, sexo ou nacionalidade. Quando o proprietário escolhe alguém, os outros recebem uma resposta automática educada.

### Visitas

O proprietário publica horários de visita com limite de pessoas e uma observação ("encontro na frente da portaria"); os interessados reservam, remarcam ou cancelam direto na proposta e recebem um lembrete.

### Contrato digital e assinatura

O contrato nasce de um modelo (apartamento por prazo determinado ou indeterminado, locação conjunta de colegas de apartamento, quarto) e é preenchido com os dados da oferta. O formulário gera um PDF, as duas partes assinam online e cada evento — proposta, assinatura, pagamento, rescisão — é registrado em uma cadeia de auditoria em que cada registro está ligado ao anterior por um hash. Assim, uma alteração posterior do histórico não pode ser escondida; a página do contrato mostra que a cadeia está íntegra. A plataforma também cuida da rescisão e do acerto da caução.

Os modelos têm a marca-d'água RASCUNHO até que um advogado os revise, e a assinatura é por enquanto uma assinatura eletrônica simples com registro de evidências (horário, endereço IP, impressão digital do documento). A assinatura via Bank iD está preparada como próximo passo e aguarda o contrato com a Bank iD.

### Pagamentos — o dinheiro vai direto para o proprietário

Do contrato sai um calendário de pagamentos: caução, aluguel e adiantamentos de despesas, divididos por cotas entre os colegas de apartamento. O inquilino paga com QR code no app do banco ou com cartão por um link do Revolut Business que leva à conta de lojista do próprio proprietário. O proprietário pode conectar a conta bancária (só leitura) e os pagamentos recebidos são conciliados sozinhos pelo símbolo variável, pelo símbolo específico e pelo valor; o que não bate fica como sugestão para conciliar à mão. Depois do vencimento vão lembretes e, após sete dias, uma escalada.

**TerraReality nunca retém nem repassa o dinheiro dos inquilinos.** Nada de conta-garantia, nada de criptomoedas — os pagamentos vão direto da conta do inquilino para a do proprietário.

### Migração de locações existentes

O proprietário que já tem apartamentos alugados com contrato em papel não precisa assinar nada de novo. Ele registra a locação como assinada fora da plataforma, envia o contrato digitalizado e os pagamentos passam a ser acompanhados a partir da data da migração: a dívida anterior vai para o saldo inicial, a caução já recebida é registrada e o símbolo variável de sempre também continua. Os inquilinos não recebem nada até que o proprietário os convide para o portal do inquilino. Várias locações podem ser importadas de uma vez a partir de uma planilha.

### Carteira em várias cidades e risco das locações

Para proprietários e administradores com vários imóveis: visão de todas as locações por município, o valor mensal previsto e o que de fato entrou, a tendência de doze meses, a lista do que precisa de atenção (dívida, escalada, rescisão, unidade vaga), a concentração de receita e um rent roll com exportação para CSV e Excel. Cada locação tem uma pontuação de risco calculada por regras (dívida, pagamentos antigos em aberto, cobertura da caução, fim do contrato se aproximando…). A pontuação é só informativa e nunca decide sobre ninguém; o inquilino vê de onde ela vem. As regras (lembretes, escalada, caução, prazo de aviso prévio) podem ser configuradas por município, e um investidor pode ter acesso somente leitura em que vê os inquilinos apenas pelas iniciais.

### Destaque e faturamento

O proprietário pode impulsionar ou destacar o anúncio. Paga com cartão pela Stripe, a nota fiscal com IVA é emitida sozinha, chega por e-mail e fica disponível para download no painel. Os anúncios impulsionados aparecem marcados como "Destaque" nos resultados.

### Backoffice, moderação e DSA

A operadora tem um painel de métricas, uma fila de anúncios para aprovar, moderação de conversas e anúncios denunciados, uma fila de sugestões da IA para novas características, a tabela de preços de destaque, os modelos de contrato, chaves de funcionalidades e um log de auditoria. Qualquer pessoa pode denunciar um anúncio, mesmo sem conta (de acordo com o Regulamento europeu dos Serviços Digitais, DSA); cada caso é decidido por uma pessoa e a justificativa vai por e-mail para quem denunciou e para o anunciante. Entrar "como o usuário" no suporte exige informar um motivo e fica registrado na auditoria.

### App para celular

O app Flutter para iOS e Android cobre o que o inquilino precisa no celular: busca com lista e mapa, detalhe do anúncio com mensagem, proposta e reserva de visita, minhas visitas, a locação com pagamento por QR e link do Revolut, e abertura direta pelas notificações push. É uma primeira versão; os builds para testadores (TestFlight e a faixa interna do Google Play) virão na preparação dos testes.

### Operação

O ambiente de produção está pronto para a Hetzner na UE: servidores de aplicação e de banco de dados separados em rede privada, HTTPS automático, backups do banco com restauração para qualquer momento (no máximo uma hora de dados perdida) e um teste de restauração verificado, monitoramento com alertas (disponibilidade de 99,9 %, resposta da busca abaixo de 300 ms, status dos backups) e relatório de erros. A IA roda em um servidor GPU próprio; quando a IA não está disponível, tudo funciona mesmo sem ela.

### Status e testes

**O MVP de toda a plataforma está pronto.** Todos os módulos acima estão programados e cobertos por testes automatizados — unitários, de integração e end-to-end, que percorrem no navegador cenários completos (anúncio, mensagens, proposta em grupo, contrato com assinatura e pagamento conciliado, carteira, destaque com nota fiscal, denúncia pelo DSA, backoffice). A restauração do banco de dados a partir de backup também foi verificada.

Também estão prontas as melhorias de segurança e operação recomendadas na revisão de código e as notificações push para propostas, contratos e pagamentos. Uma beta fechada roda em servidor próprio com anúncios de exemplo para Praga e arredores, marcados como tal. A implantação em produção na Hetzner aguarda contas e acessos (veja abaixo).

Os testes com pessoas reais acontecem em cinco fases. Cada uma termina em um portão, onde decidimos juntos se seguimos em frente:

1. **T0 — preparação (2 semanas).** Ambiente de teste na Hetzner com a faixa "Ambiente de teste", parceiros em sandbox (Stripe, Revolut, Bank iD), análise de produto sem dados pessoais, um botão "Relatar um problema / ideia" no site e no app, cadastro só por convite, dados de teste e builds do app para testadores.
2. **T1 — testes internos (1 semana).** 5–8 pessoas da equipe e do entorno passam por todos os cenários como proprietário e como quem procura, em vários dispositivos, incluindo um simulado de incidente e uma restauração de backup.
3. **T2 — testes de usabilidade moderados (2 semanas).** 12 participantes: proprietários particulares, um administrador com imóveis em várias cidades, pessoas procurando imóvel tchecas e estrangeiras e uma dupla de colegas de apartamento. Mede-se o sucesso das tarefas e a satisfação (SUS ≥ 70).
4. **T3 — piloto fechado em Praga (6 semanas).** 20 proprietários piloto com onboarding pessoal e 50–100 pessoas procurando imóvel, só por convite. Observa-se se os anúncios recebem propostas, com que rapidez os proprietários respondem, quantos contratos são fechados digitalmente e com que confiabilidade tudo funciona; um release por semana.
5. **T4 — beta aberta em Praga (4 semanas).** Cadastro aberto a todos com o selo beta, sem campanha paga — e, no fim, a decisão sobre o lançamento público.

No total, cerca de 15 semanas desde o início da preparação.

**O que precisamos de vocês:**

- contas e acessos para a operação: Hetzner, domínio e DNS, contas de desenvolvedor Apple e Google, Stripe, Revolut Business, Bank iD e o provedor da conexão bancária;
- recrutamento de testadores, 20 proprietários piloto e pessoas procurando imóvel, recompensas para os participantes;
- revisão jurídica dos termos de uso, da política de privacidade e dos modelos de contrato, os consentimentos dos testadores e a decisão sobre assinar contratos reais diretamente na plataforma durante o piloto;
- um teste de intrusão antes do piloto, a condução das entrevistas no T2 e o suporte de primeiro nível durante o piloto;
- a decisão em cada portão entre as fases.
