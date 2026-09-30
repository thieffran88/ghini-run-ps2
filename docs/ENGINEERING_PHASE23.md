# Etapa 23 — proveniência do stream de Ghini.run

## Objetivo

Reduzir a cadeia de `Ghini.run` até o ponto em que o arquivo deixa o runtime QuickBASIC e entra no código específico da aplicação.

## Resultado

A etapa separou três camadas que estavam misturadas:

1. **Âncoras da aplicação**: `data\\ghini.run`, `PROFILE`, `TRACKMAP`.
2. **Runtime de stream**: dispatcher `0x19356`, wrapper de caracteres `0x1944B` e leitor em bloco `0x1E550`.
3. **Parser genérico rejeitado**: `0x1E62E`, por usar semântica de aspas/vírgulas/CR/LF incompatível com a gramática observada em `Ghini.run`.

## Descoberta principal

`0x1E550` é uma fronteira de runtime muito mais forte que `0x1E62E`: ele implementa leitura de bloco/caracteres e retorna dados para o chamador. Entretanto, os artefatos atuais não preservam um xref direto da aplicação até essa rotina. Portanto, não se afirma que `0x1E550` seja o loader de `Ghini.run`; ele é classificado como **STRONG / generic stream reader**.

## O que permanece aberto

Ainda faltam três ligações:

`data\\ghini.run` → OPEN → stream state → reader → parser específico → PROFILE/TRACKMAP.

Não foi atribuído semântica a nenhum destino de memória sem evidência.

## Próxima prioridade

Reconstruir a representação de string/arquivo do QuickBASIC e seguir o handle retornado pelo `OPEN` até a tabela de streams. Em paralelo, enumerar callers do leitor em bloco e procurar consumidores que fazem conversão ASCII→inteiro e comparação com `PROFILE`/`TRACKMAP`.
