# Fase 2 — formato gráfico confirmado

## Descoberta principal

Os 12 primeiros recursos do `GHINI.DAT` são compatíveis com o formato de
imagem armazenado pelo `GET` gráfico do QuickBASIC em `SCREEN 13`.

A documentação do QuickBASIC define o tamanho do array de imagem como:

`4 + INT((largura * bits_por_pixel + 7) / 8) * planos * altura`

Em `SCREEN 13` há 8 bits por pixel e 1 plano. A documentação também informa
que os dois primeiros índices do array guardam a largura/altura e, em
`SCREEN 13`, a largura armazenada deve ser dividida por 8.

Aplicando isso aos recursos do banco 0:

| Recurso | Dimensão confirmada | Tamanho mínimo GET | Tamanho no DAT | Bytes restantes |
|---|---:|---:|---:|---:|
| rock | 79×79 | 6245 | 6404 | 159 |
| ghini3 | 88×37 | 3260 | 3386 | 126 |
| vette | 86×38 | 3272 | 3397 | 125 |
| pors | 80×37 | 2964 | 3082 | 118 |
| porr | 80×39 | 3124 | 3244 | 120 |
| porb | 83×40 | 3324 | 3448 | 124 |
| cruz | 80×39 | 3124 | 3244 | 120 |
| rarri | 84×35 | 2944 | 3064 | 120 |
| vip | 86×35 | 3014 | 3136 | 122 |
| pol | 85×45 | 3829 | 3960 | 131 |
| sea | 320×47 | 15044 | 15412 | 368 |
| tree | 85×99 | 8419 | 8604 | 185 |

## O que foi provado

O recurso `vette`, por exemplo, começa com:

- largura armazenada: `0x02B0` = 688 bits
- altura: `0x0026` = 38
- largura real: `688 / 8 = 86 pixels`
- dados de pixel: `86 × 38 = 3268 bytes`
- mais 4 bytes do cabeçalho = 3272 bytes

Os 3272 primeiros bytes formam uma imagem indexada coerente de 86×38.

Isso também elimina a hipótese anterior de que os bytes deveriam ser
interpretados como duas imagens intercaladas. A interpretação correta é
uma imagem SCREEN 13 de 8 bits por pixel.

## O que ainda não foi resolvido

Todos os 12 recursos confirmados possuem bytes adicionais depois da imagem
GET. Esses bytes foram preservados em `assets/unparsed_tail/`.

Não vamos chamá-los de "lixo", máscara, colisão ou metadados sem evidência.
A próxima tarefa é descobrir sua função.

Os demais 170 recursos não possuem um cabeçalho GET válido nas primeiras
quatro posições, portanto pertencem a outro formato ou são dados crus.
Eles também não serão convertidos por força bruta.

## Arquivos novos desta fase

```text
tools/decode_ghini_get.py
GET_DECODER_MANIFEST.csv
assets/decoded_get/bank_00/*.png
assets/unparsed_tail/bank_00/*.bin
docs/GHINI_GET_contact_sheet.png
docs/RESOURCE_FORMAT_PHASE2.md
```

A imagem PNG é somente uma representação dos bytes de pixel; o arquivo
`GHINI.DAT` original permanece intacto.
