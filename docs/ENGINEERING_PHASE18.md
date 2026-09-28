# Ghini Run — Etapa 18: fingerprint do loader de arquivo / data-flow

## Objetivo

Avançar da busca por "opcode interpreter" para a cadeia real de carregamento de arquivos, com foco em `data\\ghini.run`.

## Resultado principal

A análise confirmou um subsistema de I/O DOS/QB dentro do executável. Há chamadas DOS explícitas para:

- `AH=3Dh` — abrir arquivo;
- `AH=3Eh` — fechar arquivo;
- `AH=3Fh` — ler arquivo;
- `AH=40h` — escrever arquivo;
- `AH=42h` — mover ponteiro (`LSEEK`).

Os blocos mais claros estão concentrados aproximadamente entre `0x18E28` e `0x1929D`, com auxiliares anteriores em `0x17EF0`–`0x17F58`.

Isso é evidência direta de que o EXE contém uma camada própria/runtime para operações de arquivo. Em particular:

- `0x18E41` executa `INT 21h` com `AH=42h`;
- `0x18F7D` executa `INT 21h` com `AH=40h`;
- `0x19062` executa `INT 21h` com `AH=3Fh`;
- `0x1908E` executa `INT 21h` com `AH=40h`;
- `0x1909E` executa `INT 21h` com `AH=3Eh`;
- `0x1926C` executa `INT 21h` com `AH=3Dh`.

## Âncora do Ghini.run

Os literais relacionados ao loader continuam identificados no pool de strings:

| Offset físico | Linha-fonte | Texto |
|---:|---:|---|
| `0x23BE0` | 3396 | `data\\ghini.run` |
| `0x23BFC` | 3424 | `PROFILE` |
| `0x23C08` | 3436 | `Error before PROFILE` |
| `0x23C20` | 3460 | `TRACKMAP` |
| `0x23C2C` | 3472 | `Error before TRACKMAP` |

As linhas-fonte 3396–3472 formam uma âncora muito forte para a região do programa responsável por `Ghini.run`, mas **ainda não existe um xref direto demonstrado** desses literais para o código de parsing. A compilação QuickBASIC usa indireção/runtime para strings, então procurar apenas `mov immediate,<offset>` não foi suficiente.

## O que foi descartado

A rotina `0x1D787`, investigada na etapa anterior, continua rejeitada como parser de `Ghini.run`. Ela pertence a formatação/conversão decimal.

Também não foi promovido nenhum bloco aritmético apenas por semelhança matemática. Para chamar uma rotina de parser precisamos demonstrar fluxo de dados entre a abertura/leitura do arquivo e os valores de `PROFILE`/`TRACKMAP`.

## Conclusão da etapa

**CONFIRMADO:** existe no EXE um caminho DOS de abertura/leitura/seek/fechamento compatível com o I/O de arquivos usado pelo programa.

**FORTE:** o conjunto de strings nas linhas 3396–3472 é a região lógica do loader de `Ghini.run`.

**ABERTO:** qual rotina de alto nível conecta `data\\ghini.run` ao stream de I/O e como os registros `PROFILE`/`TRACKMAP` são convertidos em estruturas internas.

A próxima investigação deve seguir as chamadas indiretas/tabelas de dispatch que o código QuickBASIC usa para chegar às rotinas de I/O, em vez de procurar somente chamadas diretas ao `INT 21h`.
