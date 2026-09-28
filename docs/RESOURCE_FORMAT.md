# GHINI.DAT — Fase 1: extração dos recursos

## O que foi confirmado

`GHINI.DAT` é um contêiner de recursos com:

- assinatura inicial `RPG 03`
- tabela iniciando no offset `10`
- 182 entradas
- 40 bytes por entrada
- nome de 30 bytes
- quatro campos de 16 bits, dos quais os campos observados são `field0`, `offset`, `bank`, `size`, `field4`
- payloads endereçados por `offset + size`
- 15 bancos (`0` a `14`)

A extração desta fase é **byte a byte**, sem transformar nem recomprimir os recursos.

## Estrutura do projeto

```text
assets/raw/
├── bank_00/
├── bank_01/
├── ...
├── bank_14/
├── MANIFEST.csv
└── METRICS.csv
```

Cada arquivo recebe o nome:

```text
NNN_nome.bin
```

onde `NNN` é o índice da entrada no arquivo original.

## Importante: o formato gráfico ainda NÃO foi declarado como descoberto

Os payloads têm forte aparência de dados gráficos indexados, e alguns tamanhos possuem fatorações compatíveis com sprites 8-bit. Porém, isso **não basta** para concluir que sejam pixels lineares.

Os testes desta fase não assumem:

- largura/altura;
- RLE;
- LZ;
- formato GET do QuickBASIC;
- compressão;
- transparência;
- paleta por recurso.

Essas hipóteses serão testadas na próxima fase.

## Por que não converter para PNG ainda?

Porque uma conversão prematura poderia mascarar o formato original. Primeiro vamos descobrir a rotina de carregamento usada pelo jogo/FARQB e confrontá-la com os bytes reais.

## Próxima investigação

1. Obter/inspecionar o código-fonte QuickBASIC público de `Ghini Run`.
2. Localizar as chamadas de abertura/leitura de `GHINI.DAT`.
3. Localizar as estruturas de sprite e as rotinas de `GET/PUT`/blit.
4. Identificar como largura/altura e transparência são armazenadas ou inferidas.
5. Implementar um decoder verificável.
6. Gerar PNGs apenas depois de confirmar o formato.

A página do autor lista explicitamente o código-fonte QB45 de `Ghini Run` e explica que FARQB foi usado para combinar cerca de 180 sprites em um único arquivo. citeturn8search0
