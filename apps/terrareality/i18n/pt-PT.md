---
tagline: Arrendar casa, da pesquisa no mapa à renda paga — para senhorios, inquilinos e o operador
---
TerraReality é uma plataforma de arrendamento de longa duração de apartamentos e quartos. Começa em Praga e arredores, mas os dados estão preparados desde o início para outros países da Europa Central (jurisdição do contrato, moeda, língua). Ao contrário de um portal de anúncios, não termina no contacto: acompanha o senhorio e o inquilino durante todo o arrendamento — pesquisa, mensagens, candidatura, visita, contrato e assinatura, até aos pagamentos e ao seu controlo.

A plataforma tem quatro faces. **Quem procura** pesquisa no mapa ou simplesmente escreve o que quer. **O senhorio ou gestor** tem uma área de administração ao estilo de uma loja online: anúncios, interessados, contratos, banco, carteira e faturação. **O inquilino** tem o seu portal com o contrato, os pagamentos e os códigos QR. **O operador** tem um backoffice para aprovações, moderação e definições. Além disso, uma aplicação móvel para iOS e Android.

As capturas de ecrã são do ambiente de desenvolvimento com dados de teste: os nomes são fictícios, as fotografias dos apartamentos são ilustrativas e as sugestões da IA foram geradas em modo offline, sem modelo de linguagem.

### Pesquisa no mapa e por chat

O mapa vai da região ao município, à freguesia e até à rua, e em cada escala mostra quantas ofertas há e onde. Ao lado ficam os filtros (tipo, preço, área, tipologia, equipamento, animais, transportes) com o número de resultados de cada opção. Quem não quer clicar escreve, por exemplo, «2+kk até 25 000 em Praga 6 com cão e varanda» — a plataforma define os filtros e o enquadramento do mapa a partir da frase e mostra como a percebeu. A pesquisa pode ser guardada e as novas ofertas chegam com um alerta.

### Anúncio com ajuda da IA — sempre com o acordo de uma pessoa

O senhorio introduz a morada a partir do registo oficial de moradas (RÚIAN), as características, as fotografias e o texto. A IA consegue propor características a partir da descrição e das fotografias (elevador, varanda, tipo de construção…) e escrever o texto do anúncio em checo e em inglês. Mas uma proposta nunca é guardada sozinha: o senhorio vê o que a IA sugere, assinala o que está correto e só então é aplicado. Antes de ser publicado, o anúncio é aprovado por uma pessoa no backoffice. Em cada anúncio, o senhorio pode acrescentar perguntas para os interessados (por exemplo, «Tens animais de estimação?»).

### Mensagens

O interessado escreve ao senhorio diretamente a partir do anúncio; as mensagens chegam em tempo real, com confirmação de leitura e anexos. Até à assinatura do contrato, a plataforma esconde os números de telefone e os e-mails no texto, para que nem o combinado nem os pagamentos saiam dela — e o interessado vê o aviso «não pagues nada antes da visita». Quem não está online recebe uma notificação push ou um e-mail. Uma conversa suspeita pode ser denunciada com um clique.

### Candidaturas, partilha de casa e escolha do inquilino

O interessado candidata-se sozinho ou em nome de um grupo de colegas de casa: cria um grupo, convida os outros por e-mail, combinam no chat do grupo e a candidatura só chega ao senhorio quando todos concordam. O senhorio vê uma lista dos interessados com as respostas às suas perguntas, o estado da verificação e um breve resumo da IA (mais uma vez, apenas uma proposta). A plataforma não recolhe dados protegidos como idade, sexo ou nacionalidade. Quando o senhorio escolhe alguém, os outros recebem uma resposta automática cordial.

### Visitas

O senhorio publica horários de visita com lotação e uma nota («encontro à porta do prédio»); os interessados reservam-nos, mudam-nos ou cancelam-nos diretamente na candidatura e recebem um lembrete.

### Contrato digital e assinatura

O contrato é criado a partir de um modelo (apartamento com prazo certo ou sem termo, arrendamento conjunto de colegas de casa, quarto) e preenchido com os dados da oferta. Do formulário é gerado um PDF, as duas partes assinam-no online e cada evento — proposta, assinatura, pagamento, denúncia do contrato — é registado numa cadeia de auditoria em que cada registo está ligado ao anterior por um hash. Uma alteração posterior do histórico não pode, assim, ser escondida; a página do contrato mostra que a cadeia está intacta. A plataforma trata também da denúncia do contrato e do acerto da caução.

Os modelos têm a marca de água RASCUNHO até serem revistos por um advogado, e a assinatura é, por agora, uma assinatura eletrónica simples com registo de prova (hora, endereço IP, impressão digital do documento). A assinatura através do Bank iD está preparada como próximo passo e aguarda o contrato com a Bank iD.

### Pagamentos — o dinheiro vai diretamente para o senhorio

Do contrato nasce um calendário de pagamentos: caução, renda e adiantamentos de despesas, divididos por quotas entre colegas de casa. O inquilino paga com um código QR na aplicação do banco ou com cartão através de uma ligação Revolut Business que leva à conta de comerciante do próprio senhorio. O senhorio pode ligar a sua conta bancária (só de leitura) e os pagamentos recebidos são associados automaticamente pelo símbolo variável, pelo símbolo específico e pelo montante; o que não corresponde fica como proposta para associar manualmente. Depois do vencimento são enviados lembretes e, ao fim de sete dias, uma escalada.

**A TerraReality nunca detém nem reencaminha o dinheiro dos inquilinos.** Sem contas de garantia, sem criptomoedas — os pagamentos vão diretamente da conta do inquilino para a do senhorio.

### Transferência de arrendamentos existentes

O senhorio que já tem apartamentos arrendados com contrato em papel não tem de voltar a assinar nada. Regista o arrendamento como assinado fora da plataforma, carrega a digitalização do contrato e os pagamentos passam a ser seguidos a partir da data da transferência: a dívida anterior vai para o saldo inicial, a caução recebida fica registada e mantém-se também o símbolo variável habitual. Os inquilinos não recebem nada até o senhorio os convidar para o portal do inquilino. Vários arrendamentos de uma vez podem ser importados a partir de uma folha de cálculo.

### Carteira em várias cidades e risco dos arrendamentos

Para senhorios e gestores com vários imóveis: visão de todos os arrendamentos por município, o valor mensal previsto e o que efetivamente entrou, a tendência de doze meses, a lista do que exige atenção (dívida, escalada, denúncia, fração vaga), a concentração de receitas e um rent roll com exportação para CSV e Excel. Cada arrendamento tem uma pontuação de risco calculada a partir de regras (dívida, pagamentos antigos em atraso, cobertura pela caução, fim de contrato próximo…). A pontuação é apenas informativa e nunca decide sobre ninguém; o inquilino vê como é calculada. As regras (lembretes, escalada, caução, prazo de pré-aviso) podem ser definidas por município, e um investidor pode ter acesso só de leitura, em que vê os inquilinos apenas pelas iniciais.

### Destaque e faturação

O senhorio pode subir ou destacar o anúncio. Paga com cartão através da Stripe, a fatura com IVA é emitida automaticamente, chega por e-mail e fica disponível para descarregar na área de administração. Os anúncios destacados aparecem assinalados como «Destacado» nos resultados.

### Backoffice, moderação e DSA

O operador tem um painel de métricas, uma fila de anúncios para aprovar, moderação de conversas e anúncios denunciados, uma fila de propostas da IA para novas características, a tabela de preços dos destaques, os modelos de contrato, interruptores de funcionalidades e um registo de auditoria. Qualquer pessoa pode denunciar um anúncio, mesmo sem conta (nos termos do Regulamento europeu dos Serviços Digitais, DSA); cada caso é decidido por uma pessoa e a fundamentação segue por e-mail para o denunciante e para o anunciante. Iniciar sessão «como o utilizador» no apoio exige indicar um motivo e fica registado na auditoria.

### Aplicação móvel

A aplicação Flutter para iOS e Android cobre o que o inquilino precisa no telemóvel: pesquisa em lista e mapa, detalhe do anúncio com mensagem, candidatura e reserva de visita, as minhas visitas, o arrendamento com pagamento por QR e ligação Revolut, e abertura direta a partir das notificações push. É uma primeira versão; as compilações para testadores (TestFlight e faixa interna do Google Play) surgirão com a preparação dos testes.

### Operação

O ambiente de produção está preparado para a Hetzner na UE: servidores de aplicação e de base de dados separados numa rede privada, HTTPS automático, cópias de segurança da base de dados com recuperação para qualquer momento (no máximo uma hora de dados perdidos) e um teste de reposição verificado, monitorização com alertas (disponibilidade de 99,9 %, resposta da pesquisa abaixo de 300 ms, estado das cópias de segurança) e comunicação de erros. A IA corre num servidor GPU próprio; quando a IA não está disponível, tudo funciona igualmente sem ela.

### Estado e testes

**O MVP de toda a plataforma está concluído.** Todos os módulos acima estão programados e cobertos por testes automáticos — unitários, de integração e end-to-end, que percorrem no browser cenários completos (anúncio, mensagens, candidatura em grupo, contrato com assinatura e pagamento associado, carteira, destaque com fatura, denúncia ao abrigo do DSA, backoffice). Foi verificada também a reposição da base de dados a partir de uma cópia de segurança.

Também estão concluídas as melhorias de segurança e operação recomendadas na revisão de código e as notificações push para candidaturas, contratos e pagamentos. Uma beta fechada corre num servidor próprio com anúncios de exemplo para Praga e arredores, assinalados como tal. A implementação em produção na Hetzner aguarda contas e acessos (ver abaixo).

Os testes com pessoas reais decorrem em cinco fases. Cada uma termina numa porta em que se decide em conjunto se se avança:

1. **T0 — preparação (2 semanas).** Ambiente de teste na Hetzner com a faixa «Ambiente de teste», parceiros em sandbox (Stripe, Revolut, Bank iD), análise de produto sem dados pessoais, um botão «Comunicar um problema / ideia» no site e na aplicação, registo apenas por convite, dados de teste e compilações da aplicação para testadores.
2. **T1 — testes internos (1 semana).** 5–8 pessoas da equipa e do seu círculo percorrem todos os cenários no papel de senhorio e de quem procura, em vários dispositivos, incluindo um exercício de incidente e uma reposição a partir de cópia de segurança.
3. **T2 — testes de usabilidade moderados (2 semanas).** 12 participantes: senhorios particulares, um gestor com imóveis em várias cidades, pessoas à procura de casa checas e estrangeiras e um par de colegas de casa. Mede-se o sucesso das tarefas e a satisfação (SUS ≥ 70).
4. **T3 — piloto fechado em Praga (6 semanas).** 20 senhorios piloto com acompanhamento pessoal e 50–100 pessoas à procura de casa, apenas por convite. Acompanha-se se os anúncios recebem candidaturas, a rapidez das respostas dos senhorios, quantos contratos são concluídos digitalmente e a fiabilidade de tudo; uma versão por semana.
5. **T4 — beta aberta em Praga (4 semanas).** Registo aberto a todos com a etiqueta beta, sem campanha paga — e, no fim, a decisão sobre o lançamento público.

No total, cerca de 15 semanas desde o início da preparação.

**O que precisamos da vossa parte:**

- contas e acessos para a operação: Hetzner, domínio e DNS, contas de programador Apple e Google, Stripe, Revolut Business, Bank iD e o fornecedor da ligação bancária;
- recrutamento de testadores, de 20 senhorios piloto e de pessoas à procura de casa, recompensas para os participantes;
- revisão jurídica dos termos e condições, da política de privacidade e dos modelos de contrato, os consentimentos dos testadores e a decisão sobre se no piloto se assinam contratos reais diretamente na plataforma;
- um teste de intrusão antes do piloto, a condução das entrevistas no T2 e o apoio de primeira linha durante o piloto;
- a decisão em cada porta entre as fases.
