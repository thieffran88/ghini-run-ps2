# Ghini Run — Engenharia Reversa — Etapa 20

## Objetivo

Mapear a segunda camada do runtime QuickBASIC entre as rotinas de arquivo e o código que consome o stream.

## Resultado

### CONFIRMADO

- `0x19356` é um dispatcher indireto do runtime.
- Ele consulta o estado do stream em `DS:[SI+03]`.
- `DS:[360C]` aponta para uma tabela de vetores no segmento de código.
- O destino final é chamado indiretamente por `CALL FAR [0x3AFC]`.
- `0x1944B` usa esse mecanismo para ler caracteres/dados do stream atual.
- Há chamadas da camada de parsing que repetem `0x1944B`, mostrando a separação entre I/O de baixo nível e parser.

### CONSEQUÊNCIA

A investigação do loader deve seguir agora o caminho:

`aplicação -> runtime stream API -> 0x1944B/dispatcher -> estado do arquivo`

em vez de procurar apenas `INT 21h`.

### NÃO CONFIRMADO

Ainda não foi demonstrado que uma chamada específica da aplicação que chega ao dispatcher é a abertura de `data\\ghini.run`. Portanto não foi atribuído semântica de `PROFILE`/`TRACKMAP` a nenhum vetor.
