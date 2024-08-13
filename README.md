# Plataforma-2D

O sistema é composto por uma árvore de nós e cenas criadas separadamente, alguns dos nós são cenas, que mantêm a mesma estrutura de árvore de nós.
Por exemplo, a cena do primeiro nível possui a cena do jogador e o jogador por sua vez possui sua estrutura de nós.

* Para executar a cena principal pressione F5 no teclado;
* Para executar a cena atual pressione F6.

* Funcionalidades do Sistema:
Para explicar o sistema é necessário primeiro explicar sua estrutura.
Existem cenas separadas para a tela inicial, tela de fim de jogo e o menu de pausa, além de outros que também são instaciadas através de scripts.
Os scripts por sua vez constumam ser ligados aos nós principais de cenas que são instanciadas na cena principal, as exceções ficam por conta de nós que não...
possuem uma estrutura muito complexa e portanto não vale a pena que tenham uma cena separada, nesses casos o script é criado diratemente nesse nó na cena principal.
Outro caso de exceção são os scripts singletons que devem ser pré-carregados no sistema, não estão diretamente ligados a nenhum nó e se encarregam de tratar...
funções e variáveos globais. (Singletons-Aula 18,Funcionalidades básicas da Godot-Aula 1).

![image](https://github.com/user-attachments/assets/b7c0e026-5110-4e92-9f14-0d491ddfd4bd)
Obs: O símbolo do quadrado significa que essa cena faz parte de um grupo, a claquete que é uma cena separada, o pergaminho que é um script e o olho indica a visibilidade.
Clique em algum desses para ver mais detalhes.



Erros:
1. Morte do jogador
O player não morre em condições normais, a exceção é quando cai no limbo (erro na criação do tween). Obs: Tween é uma transição que é demonstrada nos vídeos.

2. Posição
Drop de moedas das caixas em uma posição estranha.
Drop de moedas do player em uma posição estranha.
Quando cai no limbo é respawnado em uma posição estranha.

3. Hurtbox
Player consegue subir na bola de fogo. Esse erro acontece pois a hurtbox do jogador não cobre a região dos pés, já que ele sofreria dano quando não deveria.
Obs: já foi tentada uma verificação, para no caso do que está entrando em contato com a hurtbox for na verdade a hitbox dos inimigos. A tentativa foi feita...
criando um grupo que englobasse todas as hitbox, mas isso não foi efetivo para corrigir o erro.

4. Player atravessa paredes quando é ferido
Esse erro se deve ao método demostrado no vídeo de número 31. Esse método consiste em mudar o estado do player para que ele não pegue as moedas logo que...
sofrer dano (drop de moedas estilo sonic), mas o efeito colateral é que quando é atingido, por exemplo prensado na parede por inimigo, ele a atravessa.

* ACREDITO QUE A MAIOR PARTE DOS ERROS SE DEVE À DIFERENÇA DE VERSÕES.
* A MAIOR PARTE DAS INFORMAÇÕES RELEVANTES PODEM SER ENCONTRADAS NOS RESUMOS DISPONIVEÍS NO GOOGLE DRIVE.

