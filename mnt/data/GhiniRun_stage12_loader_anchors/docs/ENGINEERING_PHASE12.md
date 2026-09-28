# Ghini Run — Etapa 12: âncoras do loader e semântica estrutural

## Objetivo
Voltar às referências conhecidas do carregamento de `data\\ghini.run` e separar três níveis de evidência:

1. texto do arquivo (`PROFILE`/`TRACKMAP`);
2. âncoras de strings no EXE (`data\\ghini.run`, `Error before PROFILE`, `Error before TRACKMAP`);
3. semântica inferida estatisticamente dos comandos.

## Resultado principal
O EXE original voltou a estar disponível no workspace desta etapa e foi usado no scanner de xrefs. A busca por formas imediatas simples para as strings de `Ghini.run` não produz uma cadeia confiável até o parser. Isso é esperado como possibilidade em QuickBASIC compilado: o programa pode passar descritores/tabelas de strings ao runtime em vez de carregar diretamente o offset literal.

Portanto, **não foi declarado um xref positivo apenas por coincidência de bytes**.

## Nova evidência estrutural do TRACKMAP
Considerando apenas comandos de nível superior das 12 definições:

- opcode `0`: 401 ocorrências, sempre 2 campos; segundo campo 10–2000.
- opcode `1`: 94 ocorrências, sempre 3 campos; terceiro campo sempre `1`.
- opcode `2`: 8 ocorrências, sempre 2 campos; segundo campo 100–400.
- opcode `3`: 184 ocorrências, sempre 3 campos; terceiro campo 1–4.
- opcode `4`: 50 ocorrências, sempre 2 campos; segundo campo 300–1000.
- opcode `5`: 70 ocorrências, sempre 3 campos; terceiro campo sempre `1`.
- opcode `6`: 38 ocorrências, sempre 2 campos; segundo campo 200–1000.
- opcode `7`: 192 ocorrências, sempre 3 campos; terceiro campo 1–4.

Isso permite reduzir o espaço de hipóteses, mas **não prova a semântica**. Em particular, ainda não se deve chamar 1/3/5/7 de esquerda/direita nem 2/4/6 de subida/descida.

## Próxima direção
A Etapa 13 deve usar o EXE novamente para localizar a rotina que transforma esses comandos em estado geométrico, usando como assinatura operações repetidas sobre números de comprimento grande e os campos do `PROFILE`, em vez de procurar apenas os valores dos opcodes.

O projeto continua preservando o princípio: evidência confirmada, hipótese e negativo ficam separados.
