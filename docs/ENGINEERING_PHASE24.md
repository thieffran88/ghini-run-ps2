# Ghini Run — Engenharia Reversa — Etapa 24

## Objetivo
Rastrear a representação interna do stream/handle usada pelo runtime QuickBASIC e aproximar a proveniência de `data\\ghini.run`.

## Resultado
- `0x40C3` é confirmado como estado global do **stream corrente**: várias rotinas leem/escrevem um ponteiro de objeto ali; `0` significa ausência de stream ativo em caminhos de leitura/fechamento.
- `0x1E550` é uma rotina forte de leitura em bloco: resolve o objeto corrente, grava o ponteiro em `0x40C3`, e usa as camadas `0x19356`/`0x1944B` para obter dados.
- `0x1E5D2` e `0x1EA4C` são fortes candidatos a rotinas de seleção/resolução de stream: recebem um seletor numérico, resolvem uma estrutura e colocam `SI` em `0x40C3`.
- `0x1944B` é a leitura de caractere/stream já estabelecida em etapas anteriores.
- `0x1E62E` continua rejeitado como parser de `Ghini.run`: sua gramática explícita é baseada em aspas, vírgulas, CR/LF e delimitadores.

## O que NÃO foi provado
A ligação estática entre o literal `data\\ghini.run` e uma chamada específica a `0x1E5D2`/`0x1EA4C` ainda não foi provada. O motivo é a representação indireta de strings/descritores no executável QuickBASIC.

## Consequência
A investigação agora tem uma fronteira concreta: identificar qual seletor/objeto de stream corresponde ao arquivo `Ghini.run`, e em seguida localizar os callers que consomem seus bytes como números e linhas.

## Classificação
- CONFIRMADO: estado global do stream corrente em `0x40C3`.
- FORTE: rotinas `0x1E550`, `0x1E5D2`, `0x1EA4C` como infraestrutura de stream.
- REJEITADO: `0x1E62E` como parser de `Ghini.run`.
- ABERTO: proveniência específica do handle de `Ghini.run`.
