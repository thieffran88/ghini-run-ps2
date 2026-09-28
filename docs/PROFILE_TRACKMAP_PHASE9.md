# Ghini Run — Fase 9: engenharia reversa de PROFILE / TRACKMAP

## Objetivo

Determinar a estrutura dos dados de pista sem atribuir significados não comprovados aos números.
O fonte público do jogo é listado como QuickBASIC 4.5, mas nesta fase a análise é feita sobre o `Ghini.exe` e `data/Ghini.run` disponíveis localmente.

## Resultado estrutural

`Ghini.run` contém 12 blocos (`TRACK1`–`TRACK6` e `TRACK11`–`TRACK16`). Cada bloco contém:

- `PROFILE`: exatamente 10 registros de 3 inteiros;
- `TRACKMAP`: fluxo hierárquico com linhas de nível superior e linhas indentadas;
- terminador `9999` no final do `TRACKMAP`.

Os seis blocos 11–16 são variantes muito próximas dos seis blocos 1–6. Isso é útil para separar dados da pista de possíveis alterações de clima/cenário ou pequenos ajustes de layout.

## PROFILE: o que foi confirmado

O formato é estável: **10 × 3 inteiros** por pista.

Não foi encontrada evidência suficiente para chamar as três colunas de largura, curvatura, altura, textura ou qualquer outra coisa específica. Portanto o projeto preserva os três campos como `profile[a][b][c]`.

Há padrões fortes:

- `12` aparece repetidamente na segunda coluna;
- `-1`, `0`, `12` e `160` são valores recorrentes na segunda coluna;
- a primeira coluna varia bastante entre pistas e seus valores podem chegar a 110;
- a terceira coluna também apresenta blocos recorrentes, sugerindo que o registro é provavelmente uma instrução compacta, não simplesmente uma lista arbitrária.

**Hipótese de trabalho:** `PROFILE` descreve alguma geometria/estado do perfil transversal ou da projeção da pista. Essa hipótese ainda não está convertida em uma semântica definitiva.

## TRACKMAP: descoberta importante

O fluxo pode ser dividido de forma segura em:

1. **registros de nível 0**, que formam a sequência principal da pista;
2. **registros indentados**, associados ao registro de nível 0 anterior;
3. `9999`, terminador.

Os registros de nível 0 usam principalmente códigos `0..7` e, ocasionalmente, códigos maiores (`21`, `22` em uma das pistas). Muitos possuem a forma:

```text
opcode comprimento força
```

enquanto outros usam:

```text
opcode comprimento
```

Os códigos `1`, `3`, `5` e `7` aparecem frequentemente com um terceiro campo pequeno (`1..4`). Os códigos `0`, `2`, `4` e `6` aparecem normalmente com apenas dois campos.

Isso é compatível com uma linguagem de comandos para geração de pista, mas **não prova** que os pares ímpares sejam curvas nem que os pares pares sejam retas/subidas/descidas. Essa nomenclatura foi deliberadamente evitada.

## Linhas indentadas

As linhas indentadas usam uma família muito maior de códigos: `10..73` e alguns outros. Seus valores são pequenos e repetitivos em comparação com os comprimentos do fluxo principal.

Isso sugere uma camada de metadados/eventos/objetos associada aos segmentos da pista. Não foi atribuído ainda significado como “árvore”, “curva”, “hill”, etc.

## Evidência do executável

O `Ghini.exe` contém as strings de erro:

- `Error before PROFILE`
- `Error before TRACKMAP`

logo após o caminho `data\ghini.run` na tabela de strings. Isso confirma que `PROFILE` e `TRACKMAP` são seções lidas pelo programa durante o carregamento da pista. As strings, sozinhas, não revelam a rotina matemática que interpreta os valores.

O executável também referencia as bibliotecas Dash/FARQB e o restante da infraestrutura QuickBASIC, portanto parte do código de leitura/arquivo pode estar misturada ao runtime/bibliotecas.

## Próximo passo técnico

A próxima fase deve localizar a rotina que transforma cada comando de nível 0 em estado de estrada/projeção. A estratégia será:

1. procurar loops que percorrem os comandos até `9999`;
2. rastrear comparações com `1,3,5,7` e com `0,2,4,6`;
3. localizar multiplicações/divisões envolvendo o segundo e terceiro campos;
4. identificar onde o resultado chega ao framebuffer 320×200;
5. validar a interpretação usando as seis pistas, não apenas uma.

Até essa correlação ser encontrada, o renderer deve continuar usando uma representação estrutural, não uma interpretação inventada.
