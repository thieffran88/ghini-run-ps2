# Ghini Run — Engenharia Reversa — Etapa 13

## Objetivo

Consolidar o que pode ser inferido com segurança da estrutura de `TRACKMAP` sem atribuir nomes semânticos aos opcodes antes de existir evidência no código executável ou no comportamento observado.

## Resultado

Os registros apresentam uma separação estrutural muito estável:

- `opcode 0`: somente 2 campos e aparece em todas as pistas; é o tipo mais frequente.
- `opcode 1`: 3 campos, terceiro campo observado somente como `1`.
- `opcode 2`: 2 campos e baixa frequência.
- `opcode 3`: 3 campos, terceiro campo entre `1..4`.
- `opcode 4`: 2 campos, segundo campo relativamente grande.
- `opcode 5`: 3 campos, terceiro campo observado somente como `1`.
- `opcode 6`: 2 campos, segundo campo relativamente grande.
- `opcode 7`: 3 campos, terceiro campo entre `1..4`.
- `opcode 21/22`: marcadores raros, presentes apenas em TRACK4/14.

## Hipóteses permitidas

A linguagem desta etapa é deliberadamente estrutural: "registro", "parâmetro", "marcador", "escala" e "modo/subtipo". Não foram usados nomes como curva, subida, descida, cenário ou distância porque ainda não há prova suficiente.

## Pista importante: pares 1/11, 2/12, 3/13, 4/14 e 5/15

As estatísticas mostram pares praticamente idênticos. Isso é compatível com duas variantes de uma mesma definição de pista (por exemplo, ambientes/condições diferentes), mas a semântica dessa duplicação permanece em aberto.

## Próxima busca

A próxima etapa deve correlacionar os valores do segundo e terceiro campos com estados/variáveis usados durante a corrida. O objetivo é encontrar uma relação observável entre:

`TRACKMAP record -> estado de pista -> posição/curvatura/projeção`.

Não é permitido promover uma hipótese a "confirmada" apenas por plausibilidade visual.
