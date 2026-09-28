# Ghini Run — Fase 4: análise dos tails

## Resultado

Os bytes após o payload mínimo de `GET` **não são simplesmente padding zerado**.

- 182 recursos analisados
- 25,700 bytes de tail
- faixa: 9–404 bytes
- mediana: 123.0 bytes
- 6 tails são 100% zero
- 19 têm pelo menos 75% de zeros
- 105 têm menos de 25% de zeros

Vários tails de carros contêm longas sequências de valores de paleta. Isso pode ser compatível com espaço excedente/residual de arrays QuickBASIC, mas ainda não prova a origem.

A documentação do QuickBASIC define o tamanho mínimo de um GET e confirma que o array pode ser maior que o mínimo; PUT reutiliza o bloco para desenhar a imagem. citeturn0search1turn0search2

A página de Piptol confirma que o FARQB 3.20 foi usado para combinar 180 sprites em um único arquivo de Ghini Run. citeturn1search0

### Conclusão operacional

**Não vamos apagar nem reinterpretar os tails.** Eles continuam preservados exatamente como estão.

A próxima investigação deve cruzar os tails com as rotinas de carregamento/FARQB e, se possível, o source QB45 público, para descobrir se são bytes excedentes de arrays ou dados auxiliares.

### Novos arquivos

- `analysis/TAIL_ANALYSIS.csv`
- `tools/analyze_tails.py`
- `docs/TAIL_heatmap_bank_00.png` … `bank_14.png`
- `docs/TAIL_ANALYSIS_PHASE4.md`
