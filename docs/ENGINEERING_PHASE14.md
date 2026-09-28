# Ghini Run — Engenharia Reversa — Etapa 14

## Objetivo

Separar o que o `PROFILE` provavelmente representa do que deve ser procurado no
`TRACKMAP`, e preparar uma representação reversível dos comandos de nível
superior para investigar a matemática da pista.

## Resultado principal: PROFILE

Há evidência forte de que os valores não negativos do `PROFILE` pertencem ao
mesmo domínio de 256 índices da paleta:

- todos os valores não negativos observados estão entre `0` e `255`;
- `-1` aparece como valor especial/sentinela;
- os perfis de `TRACK1/11`, `TRACK2/12`, ..., `TRACK6/16` são idênticos;
- várias trincas repetem valores muito próximos, como `103 160 104` e
  `89 -1 30`.

Isso torna **mais provável que PROFILE seja uma descrição visual/cromática ou
um perfil de superfície**, e não uma lista direta de coordenadas da pista.
Ainda não é permitido afirmar sua semântica exata.

## Resultado principal: TRACKMAP

Todos os 1037 registros de nível superior analisados para os seis pares usam
um segundo campo estritamente positivo. A distribuição observada é:

| Opcode | Registros | Campos | Faixa do campo 2 | Campo 3 |
|---:|---:|---:|---:|---|
| 0 | 401 | 2 | 10–2000 | — |
| 1 | 94 | 3 | 9–2000 | sempre 1 |
| 2 | 8 | 2 | 100–400 | — |
| 3 | 184 | 3 | 10–250 | 1–4 |
| 4 | 50 | 2 | 300–1000 | — |
| 5 | 70 | 3 | 30–500 | sempre 1 |
| 6 | 38 | 2 | 200–1000 | — |
| 7 | 192 | 3 | 10–500 | 1–4 |

### Hipótese operacional conservadora

O segundo campo pode ser tratado, por enquanto, como **magnitude de segmento**.
Ele é chamado de `magnitude`, e não de `distance`, no código para evitar uma
conclusão prematura.

Os totais por pista ficam aproximadamente entre 18,5 mil e 23,5 mil unidades.
Essa regularidade é compatível com uma grandeza acumulável, mas ainda não prova
que sejam unidades de distância.

O terceiro campo aparece apenas nos opcodes `1,3,5,7`. Para `3` e `7`, assume
os valores `1..4`; para `1` e `5`, é sempre `1`. Isso sugere um parâmetro de
subtipo/direção/variante, mas sua semântica permanece aberta.

## O que NÃO foi concluído

Ainda não há prova de que:

- `0` = reta;
- `3` = curva para um lado;
- `7` = curva para o outro lado;
- `1/5` = subida/descida;
- `2/4/6` = qualquer efeito geométrico específico.

Essas interpretações ficam registradas apenas como hipóteses futuras.

## Novo artefato: segmento reversível

`analysis/SEGMENT_STREAMS.json` transforma cada comando de nível superior em:

```text
segment
opcode
magnitude
subtype
nested
cumulative_magnitude_before
```

Isso permite experimentar diferentes modelos geométricos sem alterar o dado
original. Se uma hipótese sobre a semântica for rejeitada, o JSON continua
válido.

## Próximo alvo — Etapa 15

O próximo passo deve ser correlacionar o `cumulative_magnitude_before` com os
padrões de `PROFILE` e, principalmente, localizar no executável as operações
que usam os valores dos comandos `0..7` para alterar estado horizontal/vertical.

O objetivo é chegar a uma função conceitual do tipo:

```text
segmento(opcode, magnitude, subtype, estado)
        -> novo_estado_da_pista
```

Só depois disso será implementada a perspectiva 3D definitiva.
