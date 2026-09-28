# Ghini Run — Fase 5: reconstrução do loader

## Descoberta principal

O `GHINI.EXE` preserva uma tabela de literais com a forma:

`[uint16 tamanho][uint16 número de linha][bytes da string]`

Exemplos:

- 2640 → `Extract GFX...`
- 2660 → `data\\ghini.dat`
- 2678 → `File GHINI.DAT not found`
- 2706 → `Load GFX..`
- 2820 → `data\\ghini`
- 2976 → `ERROR CLOSING ARCHIVE`
- 3094 → `data\\config.dat`
- 3258 → `data\\end`
- 3396 → `data\\ghini.run`
- 3436 → `Error before PROFILE`
- 3472 → `Error before TRACKMAP`

Isso fornece âncoras de código-fonte muito mais precisas do que strings isoladas.

## Evidência

O executável contém os marcadores `bmDASH` e `bmFARQB`. Isso é coerente com a página do autor, que lista Dash e FARQB e afirma que FARQB foi usado para reunir 180 sprites em um único arquivo. citeturn3search0

O DOS Games Archive identifica `ghinirun_sc.zip` como código-fonte QuickBASIC 4.5 de 64 kB. citeturn5view0turn6view0

O download automático desse ZIP não foi possível nesta sessão; portanto, ele ainda não foi incorporado à análise.

## Próximo alvo técnico

Cruzar as âncoras de linha 2640–2706 com o desassemblado para localizar:

`abertura GHINI.DAT → leitura do índice → localização do recurso → cópia para memória → GET/PUT/Dash`

O formato já confirmado do `GHINI.DAT` será usado como assinatura para validar a rotina.
