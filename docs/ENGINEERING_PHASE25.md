# Engenharia Reversa — Etapa 25

## Objetivo
Fechar a ligação entre o literal `data\ghini.run`, o descritor de string do QuickBASIC e o estado global de stream `0x40C3`.

## Resultado principal
A análise confirmou que `0x40C3` é um estado global de stream corrente, mas **não é um identificador exclusivo de arquivo**. Várias rotinas de runtime escrevem esse campo (`0x1E579`, `0x1E5F1`, `0x1EA3E`, `0x1EA5B`, `0x1EA87`, além de caminhos em `0x19EBD`) e depois chamam a infraestrutura comum. Portanto, não é correto usar `0x40C3` isoladamente para afirmar que o stream é `Ghini.run`.

O helper em `0x17EF7` contém uma abertura DOS explícita (`AX=3D01h`, `INT 21h`) e fecha o handle em `0x17F31`, mas a string que ele abre é preparada por estruturas do runtime; não há referência direta ao offset físico `0x23BE4` do literal `data\ghini.run`.

## Evidência importante
A busca por representações simples do offset físico de `data\ghini.run` e dos textos `PROFILE`/`TRACKMAP` não produz xrefs diretos confiáveis. Alguns baixos 16-bit aparecem em instruções não relacionadas, demonstrando que procurar apenas o endereço físico não resolve a indireção do QuickBASIC.

## Consequência
O próximo passo não deve ser procurar mais `INT 21h`. A investigação deve reconstruir o **descritor de string** usado como argumento do OPEN e seguir sua cópia/normalização até a rotina que materializa o nome do arquivo. Em paralelo, devemos seguir callers de leitura que imediatamente fazem conversão ASCII→inteiro, porque esse padrão é mais discriminativo para o parser de `Ghini.run`.

## Classificação
- CONFIRMADO: `0x40C3` = ponteiro/estado do stream corrente.
- CONFIRMADO: `0x17EF7` = caminho de abertura DOS com `AX=3D01h`.
- CONFIRMADO: `0x1944B` = leitura de caractere via stream corrente.
- FORTE: `0x1E550` = leitura genérica em bloco.
- ABERTO: descritor específico de `data\ghini.run`.
- ABERTO: parser de `PROFILE`/`TRACKMAP`.
- REJEITADO: uso do offset físico do literal como xref direto.
