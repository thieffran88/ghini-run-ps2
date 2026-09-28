# Ghini Run — Etapa 10: engenharia reversa de PROFILE/TRACKMAP

## Objetivo
Localizar no `Ghini.exe` a rotina que interpreta `PROFILE` e `TRACKMAP`, sem atribuir semântica aos códigos apenas por aparência.

## Resultado desta etapa
A busca encontrou várias cadeias de comparações contra inteiros pequenos no código compilado. Uma cadeia particularmente estruturada ocorre no intervalo de código `0x5461–0x5667`, onde variáveis locais e globais são comparadas com `1`, `2`, `3`, `4`, `5` e `7`.

**Importante:** essa cadeia é evidência de lógica de estados/seleção, mas **não foi provado** que ela seja o interpretador de `TRACKMAP`. O trecho também acessa buffers e valores relacionados à renderização, portanto pode pertencer à pipeline de objetos/renderização.

## Evidência útil

- `Ghini.exe` é executável DOS compilado para o ecossistema QuickBASIC; a infraestrutura gráfica usa SCREEN 13/320×200. A documentação histórica do DirectQB confirma esse ambiente e o uso de QuickBASIC 4.5. 
- O `Ghini.run` contém seis pistas principais (`TRACK1`–`TRACK6`) e seis variantes (`TRACK11`–`TRACK16`), cada uma com `PROFILE` e `TRACKMAP`.
- `TRACKMAP` apresenta opcodes de nível superior `0,1,2,3,4,5,7` e registros subordinados `10,11,12,20,21,22,30,40,50,70,80,100`, entre outros.
- `9999` aparece como terminador.

## O que ainda NÃO está confirmado

1. Qual variável/array recebe cada coluna de `PROFILE`.
2. Qual variável recebe o opcode de cada registro de `TRACKMAP`.
3. Se o primeiro campo de um registro superior é um opcode, um tipo de segmento ou um índice.
4. A unidade dos valores de comprimento (`10`, `50`, `800`, `1000`, etc.).
5. A relação exata entre `PROFILE` e a projeção da estrada.

## Próximo passo técnico
A próxima busca deve usar referências cruzadas dos arrays globais e dos buffers usados pelo trecho `0x5461–0x5667`, em vez de procurar apenas números imediatos. O alvo é encontrar a rotina que:

`lê linha -> converte números -> armazena registro -> percorre registros -> altera estado da pista`.

Só depois dessa cadeia ser localizada devemos atribuir semântica aos opcodes.

## Reprodutibilidade
`tools/find_opcode_interpreters.py` pode ser executado sobre uma disassembly 8086 gerada com `objdump`.
