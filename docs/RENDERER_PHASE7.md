# Stage 7 — Renderer independente

## Objetivo
Construir uma camada de renderização independente do executável DOS e do contêiner FARQB/GHINI.DAT, usando apenas:
- assets GET canônicos;
- `Ghini.pal`;
- framebuffer 320×200.

## Confirmado nesta etapa
- Os 182 assets canônicos carregam como arrays GET SCREEN 13.
- Cada pixel é um índice de 8 bits na paleta.
- `Ghini.pal` contém 256 entradas RGB em escala 6-bit (convertidas para 8-bit multiplicando por 4).
- Índice 0 aparece nas bordas de muitos sprites de carros/cenário, portanto foi usado como **hipótese de transparência para teste**, não como fato documentado do jogo.

## Artefatos
- `tools/ghini_renderer.py`: loader GET + palette + composição em framebuffer 320×200.
- `tools/pixel_index_stats.py`: estatísticas de índices.
- `analysis/PIXEL_INDEX_STATS.csv`: estatísticas de todos os 182 assets.
- `renders/demo_opaque.png`: composição diagnóstica sem transparência.
- `renders/demo_transparent0.png`: mesma composição com índice 0 transparente.
- `renders/transparency_contact_sheet.png`: comparação visual dos sprites.
- `renders/palette_256.png`: paleta completa.

## Limite atual
A composição de cena ainda é uma prova de conceito. Não se assume aqui a ordem exata de desenho, clipping, prioridade, perspectiva, sprites de estrada ou semântica do índice 0 no código original.

## Próxima etapa sugerida
Reconstruir a pipeline de cena: framebuffer -> céu/road -> elementos de pista -> carros -> HUD, usando `Ghini.run`/perfis/mapas para começar a reproduzir uma tela de corrida, antes de portar a lógica para C/C++/SDL.
