# Ghini Run — Engenharia Reversa — Etapa 16

## Objetivo

Correlacionar o `TRACKMAP` com operações matemáticas no `Ghini.exe` e procurar
uma implementação equivalente a:

```text
State' = apply_segment(State, opcode, magnitude, subtype)
```

## Resultado

A varredura do código 8086 isolou blocos com `MUL`, `DIV`, `IMUL`, `IDIV`,
shifts, somas e subtrações. Eles são **candidatos de investigação**, não uma
prova da matemática da pista.

Foram destacados:

- `0x1C231` — shifts e multiplicação;
- `0x1EE5B` — multiplicações e somas;
- `0x1FCB9` — cadeia de multiplicações e subtrações;
- `0x21244–0x2138B` — aritmética multi-palavra com `MUL`/`ADC`;
- `0x21448–0x214B9` — divisão/multiplicação e normalização;
- `0x2231B–0x22350` — multiplicação/divisão e shifts.

### O que ainda não foi provado

Não existe, nesta etapa, uma cadeia demonstrada:

```text
Ghini.run
 → TRACKMAP
 → opcode/magnitude/subtype
 → um dos blocos acima
 → estado geométrico
```

Também não é válido usar apenas constantes como `320`, `200`, `160` ou `100`
para declarar uma rotina como renderer ou projeção. Esses valores podem surgir
em código gráfico, runtime ou cálculos auxiliares.

## Conclusão

A Etapa 16 estabeleceu que o executável possui bastante aritmética compatível
com cálculos de ponto fixo/multi-palavra, mas o problema principal passou a ser
**data-flow**, não falta de operações matemáticas.

A próxima etapa deve localizar o endereço/estrutura que recebe os campos do
`TRACKMAP` e seguir seu primeiro uso até uma operação aritmética.

## Arquivos

- `analysis/MATH_CLUSTERS.csv`
- `analysis/MATH_CANDIDATES.csv`
- `analysis/TRACKMAP_CORE_FOR_STAGE16.csv`
- `disasm/MATH_CANDIDATE_WINDOWS.asm`
- `tools/scan_math_candidates.py`
