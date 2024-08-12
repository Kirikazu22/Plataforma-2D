# Plataforma-2D


Erros:
-Morte do jogador
O player não morre em condições normais, a exceção é quando cai no limbo (erro na criação do tween). Obs: Tween é uma transição que é demonstrada nos vídeos.

-Posição
Drop de moedas das caixas em uma posição estranha.
Drop de moedas do player em uma posição estranha.
Quando cai no limbo é respawnado em uma posição estranha.

-Hurtbox
Player consegue subir na bola de fogo. Esse erro acontece pois a hurtbox do jogador não cobre a região dos pés, já que ele sofreria dano quando não deveria.
Obs: já foi tentada uma verificação, para no caso do que está entrando em contato com a hurtbox for na verdade a hitbox dos inimigos. A tentativa foi feita...
criando um grupo que englobasse todas as hitbox, mas isso não foi efetivo para corrigir o erro.

-Player atravessa paredes quando é ferido
Esse erro se deve ao método demostrado no vídeo de número 31. Esse método consiste em mudar o estado do player para que ele não pegue as moedas logo que...
sofrer dano (drop de moedas estilo sonic), mas o efeito colateral é que quando é atingido, por exemplo prensado na parede por inimigo, ele a atravessa.

* ACREDITO QUE A MAIOR PARTE DOS ERROS SE DEVA À DIFERENÇA DE VERSÕES.
