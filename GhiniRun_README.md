# Ghini Run — Reengenharia, Reimplementação e Portabilidade

> Projeto de engenharia reversa e reconstrução do **Ghini Run**, jogo de corrida originalmente desenvolvido para MS-DOS/QuickBASIC.

## Objetivos

1. Reconstruir tecnicamente o funcionamento do jogo a partir dos binários e dados disponíveis.
2. Separar dados, formatos e comportamento do código original.
3. Criar uma implementação independente e reproduzível.
4. Preservar os assets originais em formatos documentados quando permitido pelo projeto/licenciamento.
5. Chegar a uma reconstrução jogável moderna.
6. Em uma fase posterior, investigar uma possível portabilidade para PlayStation 2.

## Estado atual

**Etapa 13 — análise estrutural de `PROFILE`/`TRACKMAP`.**

A estrutura dos dados de pista já está bem caracterizada, mas a semântica final dos opcodes ainda não deve ser considerada resolvida. O próximo alvo é ligar os registros de `TRACKMAP` às variáveis e rotinas que controlam a geometria da pista durante a corrida.

### Legenda de evidência

- **CONFIRMADO** — diretamente demonstrado pelo arquivo, formato ou comportamento observado.
- **FORTE** — múltiplas evidências independentes apontam para a mesma interpretação.
- **HIPÓTESE** — interpretação plausível ainda não demonstrada.
- **ABERTO** — ainda não há evidência suficiente.
- **REJEITADO** — hipótese investigada e descartada.

Regra do projeto: **uma hipótese nunca vira fato apenas porque parece fazer sentido visualmente.**

---

# 1. O jogo

Ghini Run é um jogo de corrida para DOS associado a Marcus Kasumba/Piptol. A documentação pública disponível identifica o jogo como QuickBASIC 4.5 e descreve modos como Arcade, Shotgun Run, Time Attack e Pursuit, além de nove carros e seis pistas. [QuickBASIC 4.5 — qb40/qb-4.5](https://github.com/qb40/qb-4.5)

O objetivo deste repositório não é simplesmente executar o EXE original, mas reconstruir as estruturas internas necessárias para uma implementação independente.

---

# 2. Metodologia

A investigação segue uma ordem deliberada:

```text
arquivo original
      ↓
inventário
      ↓
formatos binários
      ↓
assets
      ↓
loader
      ↓
renderer
      ↓
formato das pistas
      ↓
data-flow do executável
      ↓
semântica
      ↓
modelo de corrida
      ↓
reimplementação
      ↓
portabilidade
```

Sempre que possível, cada descoberta recebe:

- um script reproduzível;
- uma tabela/manifesto;
- uma documentação curta;
- arquivos derivados separados dos originais.

---

# 3. Radiografia inicial

## Arquivos principais identificados

- `Ghini.exe` — executável DOS.
- `Setup.exe` — instalador/configuração.
- `data/GHINI.DAT` — arquivo de recursos.
- `data/Ghini.run` — definições de pistas.
- `data/Ghini.pal` — paleta.
- `data/End.pal` — paleta adicional.
- `data/CONFIG.DAT` — configuração de controles.
- `data/RECORD.DAT` — recordes.
- arquivos de áudio `.mo3`, `.mp3` e `.wav`.
- `soundsys/` — componentes relacionados ao sistema de som.

O inventário completo fica em `ghini_file_inventory.csv`.

---

# 4. GHINI.DAT

## Formato do índice

Foi identificado um índice com **182 recursos** distribuídos em **15 bancos**.

Cada entrada contém:

```text
30 bytes  nome
5 x 16-bit campos
```

Os recursos são localizados usando banco + offset relativo.

## Resultado principal

Todos os **182/182 recursos** foram validados como arrays gráficos compatíveis com o formato de imagem GET usado pelo QuickBASIC em SCREEN 13.

Estrutura confirmada:

```text
WORD width_bits
WORD height
BYTE pixels[width_pixels * height]
BYTE tail[...]
```

com:

```text
width_pixels = width_bits / 8
```

As caudas foram preservadas no material bruto. Elas **não são descartadas do arquivo original** e sua semântica permanece aberta.

---

# 5. Camada canônica de assets

Foi criada uma cópia canônica de cada imagem contendo somente o payload GET mínimo confirmado:

```text
4 + width * height bytes
```

Isso desacopla o renderer do layout FARQB/arquivo original.

A camada canônica não altera o material original.

---

# 6. Paletas

`Ghini.pal` e `End.pal` possuem 774 bytes:

```text
6 bytes de cabeçalho
768 bytes de RGB
```

Os componentes RGB estão armazenados no intervalo de 6 bits e são convertidos para a faixa de 8 bits durante a visualização.

---

# 7. Renderer independente

A Etapa 7 criou uma primeira camada de renderização independente em 320×200.

Ela consegue:

- carregar GET canônico;
- carregar a paleta;
- compor sprites;
- produzir PNGs de inspeção;
- comparar hipóteses de transparência.

O índice `0` é uma hipótese forte para transparência em vários sprites por causa de seus padrões de borda, mas isso ainda não foi elevado a fato universal do jogo.

---

# 8. Pistas

`Ghini.run` contém 12 definições organizadas em pares:

```text
TRACK1  / TRACK11
TRACK2  / TRACK12
TRACK3  / TRACK13
TRACK4  / TRACK14
TRACK5  / TRACK15
TRACK6  / TRACK16
```

Os seis primeiros correspondem às seis pistas conhecidas do jogo; os pares adicionais apresentam estruturas altamente relacionadas e devem ser tratados como variantes até que sua finalidade seja demonstrada.

Campos identificados:

- `RAIN`
- `SKY`
- `VERGE L`
- `VERGE R`
- `ROADCOL`
- `SCENERY`
- `LAYERSCROLL`
- `PROFILE`
- `TRACKMAP`

A existência dos campos e sua posição no arquivo são fatos. A interpretação interna de todos eles ainda está em investigação.

---

# 9. PROFILE

O `PROFILE` apresenta registros regulares com três valores inteiros.

A estrutura está confirmada, mas os nomes semânticos dos três campos continuam **ABERTOS**.

Não assumir que eles representam automaticamente curva, inclinação, horizonte ou qualquer outro conceito sem confirmação pelo executável/comportamento.

---

# 10. TRACKMAP

A análise atual identifica uma linguagem estruturada de registros.

Os opcodes principais observados incluem:

```text
0 1 2 3 4 5 6 7
```

e existem marcadores raros:

```text
21
22
```

Padrões confirmados:

| Opcode | Estrutura observada | Situação |
|---:|---|---|
| 0 | 2 campos | forte evidência de registro estrutural dominante |
| 1 | 3 campos; terceiro = 1 | forte |
| 2 | 2 campos; raro | hipótese de controle/evento |
| 3 | 3 campos; terceiro 1–4 | forte |
| 4 | 2 campos; valores maiores | hipótese de controle/evento |
| 5 | 3 campos; terceiro = 1 | forte |
| 6 | 2 campos; valores maiores | hipótese de controle/evento |
| 7 | 3 campos; terceiro 1–4 | forte |
| 21 | 3 campos; apenas em uma pista/variante | aberto |
| 22 | 3 campos; apenas em uma pista/variante | aberto |

Ainda **não** existe neste README uma tradução do tipo:

```text
3 = curva
5 = subida
7 = cenário
```

porque isso exigiria evidência adicional.

---

# 11. Engenharia reversa do executável

O executável contém referências e mensagens relacionadas ao carregamento:

```text
DATA\\GHINI.DAT
DATA\\GHINI.RUN
Error before PROFILE
Error before TRACKMAP
```

Também foram identificados marcadores relacionados a bibliotecas como FARQB e DASH.

O executável foi analisado como código DOS/8086 após o cabeçalho MZ e as relocations.

## O que já foi aprendido

- existem estruturas globais e rotinas de processamento compatíveis com o programa compilado em QuickBASIC;
- o carregamento de `PROFILE`/`TRACKMAP` é uma etapa real do fluxo do programa;
- simples buscas por constantes `1,2,3,5,7` produzem falsos positivos e não são suficientes para identificar o interpretador.

## Hipótese rejeitada

Um bloco encontrado na região aproximada `0x5461–0x5667` parecia uma máquina de estados candidata, mas não foi possível conectar seu data-flow à leitura de `TRACKMAP`. Ele foi removido da lista de evidências positivas.

Essa rejeição faz parte do histórico e deve permanecer documentada.

---

# 12. Etapas do projeto

| Etapa | Tema | Estado |
|---:|---|---|
| 1 | Inventário/radiografia | CONCLUÍDO |
| 2 | Decodificação inicial GET | CONCLUÍDO |
| 3 | Decodificação dos 182 assets | CONCLUÍDO |
| 4 | Análise das tails | CONCLUÍDO |
| 5 | Análise do loader/executável | CONCLUÍDO |
| 6 | Camada canônica de assets | CONCLUÍDO |
| 7 | Renderer independente | CONCLUÍDO |
| 8 | Pipeline estrutural de pista | CONCLUÍDO |
| 9 | Estrutura PROFILE/TRACKMAP | CONCLUÍDO |
| 10 | Busca de interpretadores/opcodes | CONCLUÍDO |
| 11 | Data-flow e rejeição de falso positivo | CONCLUÍDO |
| 12 | Âncoras do loader | CONCLUÍDO |
| 13 | Semântica estrutural conservadora | CONCLUÍDO |
| 14 | Próximo: data-flow dos registros até a física/renderização | PLANEJADO |
| 15+ | Reconstrução do modelo de corrida | PLANEJADO |
| 20+ | Reimplementação jogável | PLANEJADO |
| Futuro | Investigação de portabilidade PS2 | PLANEJADO |

---

# 13. Organização recomendada do GitHub

```text
GhiniRun/
├── README.md
├── LICENSE
├── docs/
│   ├── reverse-engineering/
│   ├── formats/
│   ├── rendering/
│   └── porting/
├── analysis/
│   ├── manifests/
│   ├── trackmap/
│   └── executable/
├── tools/
│   ├── extractors/
│   ├── decoders/
│   └── analyzers/
├── assets/
│   ├── canonical/
│   └── reference/
├── renderer/
├── reimplementation/
├── ports/
│   └── ps2/
└── stages/
    ├── stage01/
    ├── stage02/
    └── ...
```

Durante a investigação, os ZIPs de cada etapa podem ser mantidos como snapshots externos. No repositório final, é preferível versionar os scripts, documentação e dados pequenos/reproduzíveis e evitar duplicar grandes artefatos derivados.

---

# 14. Regra de atualização do projeto

Cada nova etapa deve:

1. **não sobrescrever silenciosamente uma descoberta anterior**;
2. adicionar somente arquivos novos ou modificados;
3. manter scripts reproduzíveis;
4. registrar descobertas confirmadas e hipóteses separadamente;
5. documentar hipóteses rejeitadas quando elas tiverem orientado a investigação;
6. atualizar a tabela de etapas deste README;
7. indicar exatamente quais arquivos precisam ser adicionados ao GitHub;
8. não reenviar arquivos originais que não mudaram.

Formato recomendado para cada etapa:

```text
stageNN/
├── README.md
├── analysis/
├── tools/
├── docs/
└── renders/       # somente quando houver imagens novas
```

---

# 15. Reprodutibilidade

As ferramentas devem preferencialmente:

- receber caminhos de entrada explicitamente;
- produzir CSV/JSON determinísticos;
- registrar hashes quando manipular assets;
- nunca alterar o arquivo original;
- funcionar em Linux/WSL sempre que possível;
- evitar dependências proprietárias para as fases de análise.

A implementação futura pode usar C/C++/SDL ou outra camada moderna, mas a análise dos formatos deve permanecer independente da implementação final.

Projetos modernos demonstram que jogos QuickBASIC podem ser reconstruídos/portados mantendo dados e lógica separados da implementação original; isso é útil como referência de engenharia, não como evidência da implementação específica de Ghini Run. [Wetspot II — exemplo de port de QuickBASIC para C/SDL](https://github.com/dmitrysmagin/wetspot2)

---

# 16. Fontes externas e contexto

A documentação pública do QuickBASIC 4.5 continua disponível em projetos de preservação e documentação técnica. citeturn0search0turn0search5

O código-fonte público de Ghini Run é conhecido por fontes históricas da comunidade, mas o fato de existir uma referência pública não significa que o conteúdo tenha sido incorporado a este repositório. Quando o fonte original puder ser obtido de forma legítima e verificável, ele deverá ser comparado com a engenharia reversa em uma etapa separada.

---

# 17. Licenciamento e preservação

**ATENÇÃO:** este README não concede licença sobre os assets originais do jogo.

Antes de publicar o executável original, músicas, gráficos ou outros materiais proprietários, verificar a licença/direitos aplicáveis.

O objetivo técnico do projeto é documentar formatos e reconstruir o funcionamento, respeitando os direitos dos autores e titulares.

---

# 18. Próximo marco técnico

O próximo grande objetivo é encontrar a cadeia:

```text
TRACKMAP record
      ↓
variável/estrutura interna
      ↓
estado acumulado da pista
      ↓
PROFILE / posição longitudinal
      ↓
curvatura / deslocamento / perspectiva
      ↓
segmentos 3D aparentes
      ↓
renderização 320×200
```

Quando essa cadeia estiver demonstrada, será possível substituir a reconstrução estrutural atual por uma implementação da **matemática original da pista**.

---

# 19. Histórico

Este README é deliberadamente cumulativo. Novas etapas devem ser acrescentadas abaixo desta seção, preservando o histórico anterior.

### Etapa 13

Consolidação estrutural dos opcodes de `TRACKMAP`. Foram separadas propriedades confirmadas de hipóteses semânticas. Nenhum opcode recebeu ainda um nome funcional definitivo.

---

## Princípio do projeto

> **Reconstruir primeiro. Interpretar depois. Confirmar antes de afirmar.**

A meta não é apenas fazer uma imagem parecida com o jogo original. A meta é chegar a uma reconstrução tecnicamente explicável, reproduzível e suficientemente fiel para servir de base à reimplementação e, posteriormente, à investigação da portabilidade para PS2.

### Etapa 14

Separação da investigação de `PROFILE` e `TRACKMAP`.

- `PROFILE` mostrou forte evidência de trabalhar no domínio dos índices da paleta, com `-1` como valor especial.
- O segundo campo de todos os comandos de nível superior `TRACKMAP` é estritamente positivo e foi modelado provisoriamente como `magnitude`, sem assumir que seja distância.
- Os opcodes `0..7` foram caracterizados por número de campos e faixas numéricas.
- Foi criado `SEGMENT_STREAMS.json`, uma representação reversível dos segmentos com magnitude, subtipo, comandos aninhados e magnitude acumulada.
- Nenhum opcode recebeu ainda uma semântica geométrica definitiva.

A próxima etapa deve localizar no executável as operações que transformam `(opcode, magnitude, subtype)` em estado geométrico da pista.
