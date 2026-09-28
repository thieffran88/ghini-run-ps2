# Ghini Run — Fase 6: camada canônica de assets

## Objetivo

Separar o formato gráfico confirmado dos bytes excedentes que ainda não têm semântica conhecida.

Para cada um dos 182 recursos, foi criado um arquivo `.get` contendo **somente o payload necessário do QuickBASIC GET**:

`4 + (width × height)` bytes.

O `GHINI.DAT` original permanece intacto.

## Resultado

- Recursos canônicos: 182
- Validações com erro: 0
- Bytes canônicos: 916,328
- Bytes removidos como tail: 25,700
- Recursos continuam identificados por índice + nome.
- SHA-256 de cada `.get` foi registrado.

Os tails não foram descartados do projeto; continuam disponíveis no pacote da Fase 3/4 e devem ser tratados separadamente até que a rotina FARQB seja confirmada.

## Por que esta camada é importante

A reimplementação não precisa depender do layout físico original de `GHINI.DAT` para começar a renderizar sprites.

Ela pode carregar:

1. cabeçalho GET;
2. largura/altura;
3. pixels indexados;
4. paleta `Ghini.pal`;

e reproduzir o `PUT` equivalente.

Isso permite construir um renderer moderno/portável antes de reconstruir todo o sistema de arquivos proprietário.

## Próxima etapa

Usar essa camada canônica para implementar um **loader independente de GHINI**, seguido por uma pequena cena de teste em 320×200:

- fundo/paisagem;
- carro;
- sprite de cenário;
- HUD.

Depois cruzaremos o resultado com screenshots do jogo original.
