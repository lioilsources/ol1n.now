---
tagline: Controle de ponto por obra que confere o local — e não guarda sua localização
---
Construtoras e equipes de assistência técnica ainda lançam as horas no papel, pelo WhatsApp e no Excel. O encarregado não tem como conferir quem esteve onde, e o trabalhador não tem como comprovar hora extra. O PMTracker mede o tempo em uma obra específica e sabe, em cada registro, se a pessoa esteve mesmo no local.

### A localização só duas vezes, e depois é descartada

As coordenadas são enviadas **só ao iniciar e ao parar** a medição. O servidor confere se o ponto está dentro da geocerca da obra, guarda um único dado, "esteve / não esteve no local", e descarta as coordenadas. Nada de mapa de deslocamentos, nada de rastreamento em segundo plano. Trabalho fora da geocerca pode ser liberado por uma exceção que fica gravada no log de auditoria.

### Quem controla os papéis é o banco de dados, não o app

Um membro da equipe registra tempo nas obras às quais está atribuído. Um gestor também gerencia as obras e a escala de pessoal e vê relatórios. Um administrador gerencia os usuários. As permissões são impostas por regras direto no banco de dados, então nem um cliente modificado consegue burlá-las.

### Status

É um MVP: já existem o modelo de dados, os papéis, a verificação da geocerca e as telas de login, medição, obras, escala, relatórios e administração. O modo offline para obras sem sinal está pronto, mas ainda não foi ativado, e o app ainda não roda em nenhuma empresa. Para entrar, você precisa de uma conta fornecida pelo seu empregador.

### Para beta testers

Por enquanto a versão de teste é só para **Android**. Ela roda com uma empresa de teste, "Stavby s.r.o.", com pessoas fictícias e duas obras: a reforma de escritórios na praça Venceslau, em Praga, e a climatização na praça da Liberdade, em Brno. Os dados podem ser apagados a qualquer momento. Não há cadastro no app; a conta é enviada por quem te convidou para testar.

**Instalação**

1. No celular, baixe o APK pelo botão da seção **Downloads** acima (ou em [GitHub Releases](https://github.com/lioilsources/PMTracker/releases)).
2. Abra o arquivo baixado e permita a instalação de fontes desconhecidas quando o Android perguntar.
3. O Google Play Protect pode avisar que não conhece o app. Isso acontece porque ele não vem do Google Play; escolha instalar mesmo assim.
4. Abra o **PMTracker** e entre com a conta que você recebeu na mensagem.

**O que testar como membro da equipe**

- Na aba **Výkaz** (Folha de ponto), toque em **Zahájit výkaz** (Iniciar folha de ponto), escolha uma obra e permita o acesso à localização. No local da obra, aparece embaixo do tempo um "Na místě" (No local) verde.
- Se você não estiver no local, o app pede um motivo. Tudo bem: digite, por exemplo, "test" e o registro é salvo com uma observação de que foi feito fora do local.
- Depois de um tempo, pare a medição com o botão **Ukončit výkaz** (Encerrar folha de ponto). O "Dnes celkem" (Total de hoje) aumenta.
- Na aba **Zakázky** (Obras), abra os detalhes: endereço, tamanho da geocerca, quem está atribuído e a lista de tarefas.

**O que testar como gestor**

- Você também vê **Roster** (sua equipe) e **Reporty** (Relatórios) com o tempo trabalhado por pessoa e por obra. No relatório só contam as medições paradas; o período se muda no canto superior direito.
- Para trocar de conta, saia da conta (ícone no canto superior direito da aba **Výkaz**).

**O que ainda não esperar**

- Sem internet o app não funciona; o modo offline vem depois.
- Uma medição esquecida não para sozinha; pare manualmente.
- Ainda não há versão de iPhone para testers.

Mande bugs ou ideias para quem te convidou: o que você estava fazendo, o que aconteceu e com qual conta. Uma captura de tela ajuda muito.
