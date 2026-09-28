# Ghini Run — Etapa 11: data-flow de PROFILE/TRACKMAP

## Objetivo
Rastrear a proveniência dos valores que aparecem no bloco candidato 0x5461–0x5667, evitando assumir que comparações contra 1,2,3 são os opcodes de TRACKMAP.

## Resultado
O bloco candidato possui uma estrutura real de estado/loop, mas o artefato disponível nesta etapa não contém a cadeia de proveniência desde `Ghini.run` até esse bloco. Ele usa chamadas de runtime com vários seletores e acessos a estruturas ES:[...].

### Evidência
- loop externo de 5 iterações;
- chamadas repetidas com BX=0x66 e passo de 4 bytes;
- acessos aos seletores 0x94, 0xc2, 0x11e, 0xf0, 0x14c e 0x1a8;
- comparações locais contra 1, 2 e 3;
- atualização de estados globais e contadores.

## Conclusão
Este bloco **não deve ser promovido a interpretador de TRACKMAP**. A semelhança numérica com os opcodes é insuficiente.

O próximo rastreamento precisa partir de uma referência conhecida aos dados de `Ghini.run`: a rotina que abre/lê o arquivo e a rotina que converte as linhas `PROFILE`/`TRACKMAP`. Sem o executável original presente no workspace desta etapa, essa ligação não pode ser demonstrada de forma honesta.

## Estado da reconstrução
`PROFILE`: estrutura conhecida, sem semântica final dos três campos.
`TRACKMAP`: estrutura textual conhecida, sem semântica final dos opcodes.
`0x5461–0x5667`: bloco candidato rejeitado como prova de interpretador.
