# Ghini Run — Etapa 22 — Stream API boundary

## Objetivo

A Etapa 21 mostrou a fronteira entre aplicação e runtime. A Etapa 22
classifica os callers conhecidos do dispatcher `0x19356` e separa três
camadas que estavam sendo confundidas:

1. operações de stream do runtime;
2. leitura genérica de texto/blocos;
3. parser específico de `Ghini.run`.

## Resultado

### CONFIRMADO

- `0x19356` é um dispatcher indireto baseado no estado do stream.
- `0x1944B` é uma API de leitura de caractere do stream corrente.
- `0x1E5A0` executa um caminho de leitura em bloco que termina em armazenamento
  sequencial via `ES:DI` e chamadas repetidas a `0x1944B`.
- `0x1E62E` é um helper textual genérico com testes explícitos para aspas,
  vírgula, CR e LF.
- `0x17EF7` é um helper de abertura DOS (`AH=3Dh`) observado na camada de
  runtime.

### REJEITADO

`0x1E62E` não é tratado como parser de `Ghini.run`: o arquivo observado tem
0 vírgulas e 0 aspas e apresenta estrutura baseada em espaços/TAB e linhas
numéricas.

### FORTE

`0x1E5A0` é um candidato melhor para a leitura bruta do conteúdo de um
stream do que `0x1E62E`, mas ainda não há prova de que o stream seja
`data\\ghini.run` no ponto observado.

## O que ainda falta

A cadeia exata continua:

`data\\ghini.run literal -> abertura -> handle/stream -> leitura -> parser -> PROFILE/TRACKMAP -> estrutura de memória`

O ponto crítico ainda é a **proveniência da string/stream**. Não foi atribuído
semântica de `PROFILE` ou `TRACKMAP` a `0x1E5A0` nem a qualquer slot do
dispatcher.

## Próximo foco

A próxima investigação deve rastrear o argumento usado pelo helper de abertura
(e o objeto/handle criado) até o primeiro consumidor que compara ou copia
texto de `Ghini.run`. A meta é obter um edge de data-flow que possa ser marcado
como CONFIRMADO, não apenas uma semelhança estrutural.
