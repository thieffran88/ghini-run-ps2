# Ghini Run — Etapa 19: QuickBASIC runtime dispatch

## Objetivo

Reduzir a distância entre as chamadas DOS observáveis e o código da aplicação que carrega `data\\ghini.run`.

## Resultado principal

A análise confirma uma camada de **dispatcher indireto** em `0x19356`. Em vez de esperar que o código da aplicação contenha chamadas diretas para `0x19062` (READ) ou `0x1926c` (OPEN), a investigação passa a considerar a tabela/dispatch do runtime.

A cadeia de baixo nível confirmada é:

```text
aplicação QB
   |
   v
runtime dispatcher (0x19356)
   |
   +--> OPEN  0x1926c -> INT 21h / AH=3Dh
   +--> READ  0x19062 -> INT 21h / AH=3Fh
   +--> WRITE 0x1908e -> INT 21h / AH=40h
   +--> CLOSE 0x1909e -> INT 21h / AH=3Eh
   +--> LSEEK 0x18e41 -> INT 21h / AH=42h
```

## Estrutura interna do stream

Os acessos a `SI` mostram uma estrutura de runtime com campos recorrentes. Os offsets são mantidos como offsets do runtime, sem atribuir significado de jogo:

- `+01h`: handle DOS usado nas chamadas `INT 21h`;
- `+05h`: flags de estado;
- `+06h`: limite/tamanho associado ao buffer/stream;
- `+0Ch/+0Eh`: posição de stream;
- `+10h`: cursor/contador do buffer;
- `+12h/+13h`: bytes do buffer.

## O que foi descartado

O parser genérico localizado em `0x1e62e` trabalha com delimitadores como vírgula, CR/LF e aspas. Isso não corresponde ao `Ghini.run`, que usa linhas com tokens separados por espaço e indentação por TAB. Portanto ele **não** foi promovido como parser do arquivo da pista.

## Estado da reconstrução

**CONFIRMADO:** camada DOS de I/O e existência de dispatcher indireto.

**FORTE:** o dispatcher explica a ausência de xrefs diretos da aplicação para as primitivas DOS.

**ABERTO:** identificar o ponto exato em que a aplicação passa `data\\ghini.run` ao runtime e onde os blocos `PROFILE` e `TRACKMAP` são materializados.

A próxima busca deve partir da chamada indireta e de estruturas de strings/arquivos do código da aplicação, não de novas buscas por `INT 21h`.
