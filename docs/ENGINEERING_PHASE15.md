# Ghini Run — Engenharia Reversa — Etapa 15

## Objetivo

Separar o `TRACKMAP` em duas camadas observáveis:

1. **core**: `opcode + magnitude + subtype` dos registros de nível superior;
2. **sideband**: registros indentados/nested associados ao registro superior.

A motivação é comparar os pares `TRACK1/11` ... `TRACK6/16` sem deixar alterações de decoração/configuração contaminarem a análise da geometria.

## Resultado mais forte da etapa

Os pares de pistas mostram que a sequência principal (`opcode`, `magnitude`, `subtype`) é muito mais estável entre as pistas correspondentes do que o conteúdo nested.

Isso é uma evidência **FORTE** de que os registros nested representam uma camada adicional — provavelmente visual, ambiental ou de configuração de segmento — e não devem ser misturados com o primeiro modelo da geometria.

Isso ainda **não prova** qual é a semântica de cada opcode.

## Morfologia dos opcodes

A divisão estrutural é muito clara:

- `0, 2, 4, 6`: não possuem `subtype` no nível superior;
- `1, 3, 5, 7`: possuem `subtype`, e o subtype observado é `1..4`;
- os opcodes pares aceitam magnitudes maiores em geral;
- os opcodes ímpares concentram-se em magnitudes menores e são mais frequentes em sequências de transição.

Isso sugere uma possível máquina de estados com famílias distintas de comando, mas **não autoriza ainda nomes como reta, curva, subida ou descida**.

## Modelo intermediário adotado

Para a próxima investigação, o segmento é representado como:

```text
Segment {
    index
    opcode
    magnitude
    subtype
    sideband[]
}
```

E o estado geométrico permanece deliberadamente abstrato:

```text
State {
    distance
    lateral
    heading
    curvature
    elevation
}
```

A função procurada no executável é conceitualmente:

```text
State' = apply_segment(State, opcode, magnitude, subtype)
```

Ainda não existe uma implementação afirmada como equivalente ao original.

## O que foi descartado

Não é seguro usar apenas a semelhança visual de uma pista renderizada para atribuir significado aos opcodes.

Também não foi encontrada, nesta etapa, uma prova suficiente no código compilado que permita dizer qual sinal (`+/-`) cada subtype representa.

## Próximo passo — Etapa 16

Correlacionar o **core stream** com as rotinas matemáticas encontradas no executável e procurar operações características de:

- soma/subtração acumulativa;
- multiplicação por magnitude;
- mudança de sinal por subtype;
- atualização de posição lateral;
- atualização de heading/curvature;
- integração vertical/elevation.

O objetivo é transformar o modelo abstrato acima em uma função matemática verificável.
