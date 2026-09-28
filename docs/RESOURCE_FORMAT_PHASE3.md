# Ghini Run — Fase 3: formato GET completo

## Resultado principal

A correção importante desta fase é tratar `bank` como banco lógico de 64 KiB:

`absolute_offset = bank * 65536 + offset`

Com isso, **os 182/182 recursos de `GHINI.DAT` passam a validar como arrays gráficos QuickBASIC GET em SCREEN 13**.

O cabeçalho de cada recurso é:

- `uint16 width_bits`
- `uint16 height`
- `width = width_bits / 8`
- `width * height` bytes de pixels indexados
- bytes restantes: preservados como `tail.bin`, sem interpretação

A documentação do QuickBASIC confirma que SCREEN 13 usa 8 bits por pixel e que o array GET começa com 4 bytes de informação de dimensão. citeturn3search0turn3search2

## O que mudou em relação à Fase 2

A Fase 2 tinha validado diretamente apenas o primeiro banco. A análise seguinte mostrou que os campos `bank` não podem ser ignorados: os offsets são relativos a blocos de 64 KiB.

Aplicando `bank * 65536 + offset`, todos os 182 recursos validam.

Isso também corrige a conclusão anterior de que havia 170 formatos desconhecidos.

## Estatísticas

- Recursos: 182
- Recursos GET válidos: 182
- Bancos: 15 (0–14)
- Maior dimensão: 320×83 em `alp2`
- Maior recurso: 26.968 bytes em `alp2`
- Total de bytes de tails preservados: 25.700
- Nenhum tail foi descartado ou reinterpretado.

## Tails

Os bytes depois do payload GET continuam sem interpretação nesta fase. Eles variam bastante: alguns são todos zero, outros têm poucos valores distintos e outros têm maior diversidade.

Portanto, o projeto preserva esses bytes em:

`assets/unparsed_tail/bank_XX/`

Não devemos chamá-los de “lixo”, máscara ou colisão sem evidência do código ou de uma rotina de carregamento.

## Próximo alvo técnico

Agora que o formato gráfico está resolvido para todo o `GHINI.DAT`, o próximo passo é correlacionar os tails e as dimensões com as rotinas de carregamento/PUT do executável ou com o source QB45 público do jogo.

A página de arquivos do autor confirma que Ghini Run v1.2 foi feito em QuickBASIC 4.5 e que o FARQB 3.20 foi usado para combinar 180 sprites em um único arquivo. citeturn0search0

## Arquivos novos desta fase

- `tools/decode_ghini_get.py`
- `GET_DECODER_MANIFEST.csv`
- `docs/GET_contact_sheet_bank_00.png` … `bank_14.png`
- `assets/decoded_get/bank_XX/*.png`
- `assets/unparsed_tail/bank_XX/*.bin`
