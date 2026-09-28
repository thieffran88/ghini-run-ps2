# Engenharia — Etapa 21: Call-chain do runtime QuickBASIC

## Objetivo

Seguir a fronteira entre o dispatcher do runtime e o código que efetivamente poderia carregar `data\ghini.run`, sem atribuir semântica sem data-flow comprovado.

## Resultado

### CONFIRMADO

- `0x19356` é um dispatcher indireto do runtime.
- Ele usa `DS:360C` como base de uma estrutura/tabela em runtime.
- O índice deriva de `AL` e de um campo no estado de stream apontado por `SI`.
- `0x1E5A0` é um caminho de leitura em bloco que passa pelo dispatcher e, em uma alternativa, chama `0x1944B` repetidamente.
- `0x1E62E` é um scanner genérico de entrada/caracteres: lê via `0x1944B`, ignora espaços e trata aspas/vírgulas.
- Os literais `data\ghini.run`, `PROFILE`, `TRACKMAP` e as mensagens de erro permanecem confirmados no pool de strings.

## Correção importante

Os bytes no offset físico `0x6D09` não devem ser interpretados como a tabela usada por `0x19356`. `0x360C` é uma variável de runtime; ela é inicializada para `0x6D09`, mas a interpretação correta precisa considerar o segmento em execução e a população/relocação da tabela. Portanto, esta etapa não usa o conteúdo bruto do arquivo nesse offset como se fosse a tabela final.

## O que ainda NÃO está provado

Não foi estabelecida a cadeia completa:

`data\ghini.run → string/handle QB → OPEN → READ → parser de PROFILE → parser de TRACKMAP`.

Também não foi demonstrado que `0x1E62E` seja o parser de `Ghini.run`; sua gramática observada é compatível com entrada genérica do runtime.

## Próximo alvo

A Etapa 22 deve rastrear a criação do descritor/string de `data\ghini.run` e o primeiro handle/estado de stream associado, usando as estruturas de string do QuickBASIC e os pontos que escrevem `DS:40C3`. O objetivo é chegar ao caller da aplicação, não procurar mais rotinas genéricas do DOS.
