# Plataforma-2D
  
O sistema é composto por uma árvore de nós e cenas criadas separadamente. Alguns dos nós são cenas, mas que mantêm a mesma estrutura, por exemplo, a cena do primeiro nível possui a cena do jogador e o jogador por sua vez possui sua estrutura de nós.  
  
**Para executar a cena principal - F5;**  
**Para executar a cena atual - F6.**  

**Funcionalidades do Sistema:** Para explicar o sistema é necessário primeiro explicar sua estrutura, que consiste em cenas separadas para a tela inicial, tela de fim de jogo e o menu de pausa, entre outros que também são instanciadas através de scripts. Os scripts por sua vez costumam ser ligados aos nós principais de cenas que são instanciadas na cena principal, as exceções ficam por conta de nós que não possuem uma estrutura muito complexa e, portanto, não vale a pena que tenham uma cena separada, nesses casos o script é criado diretamente nesse nó na cena principal. Outro caso de exceção são os scripts singletos que devem ser pré-carregados no sistema, não estão diretamente ligados a nenhum nó e se encarregam de tratar funções e variáveis globais.  
*- Funcionalidades básicas da Godot - Aula 1;*  
*- Level Design(como orientar os objetos na cena principal) - Aula 2;*  
*- Singletons - Aula 18.*  

**Figura 1:** O símbolo do quadrado significa que essa cena faz parte de um grupo, a claquete que é uma cena separada, o pergaminho que é um script e o olho indica a visibilidade.
Clique em algum desses para ver mais detalhes.  
![image](https://github.com/user-attachments/assets/b7c0e026-5110-4e92-9f14-0d491ddfd4bd)  

**Figura 2:** Como é possível ver no canto superior direito da tela, é possível conectar algum desses sinais 'NÓ' ao script que desejar, algo que é referido nas descrições das aulas como conectar sinal.  
![image](https://github.com/user-attachments/assets/6de1da1e-8df1-42cb-99ae-9088191d747c)  

**Erros:**  
1. Morte do jogador
O player não morre em condições normais, a exceção é quando cai no limbo (erro na criação do tween). Obs: Tween é uma transição que é demonstrada nos vídeos.

2. Posição
Drop de moedas das caixas em uma posição estranha.
Drop de moedas do player em uma posição estranha.
Quando cai no limbo é respawnado em uma posição estranha.

3. Hurtbox
Player consegue subir na bola de fogo. Esse erro acontece, pois, a hurtbox do jogador não cobre a região dos pés, já que ele sofreria dano quando não deveria.
Obs: já foi tentada uma verificação, para no caso do que está entrando em contato com a hurtbox for na verdade a hitbox dos inimigos. A tentativa foi feita
criando um grupo que englobasse todas as hitbox, mas isso não foi efetivo para corrigir o erro.

4. Player atravessa paredes quando é ferido
Esse erro se deve ao método demostrado no vídeo de número 31. Esse método consiste em mudar o estado do player para que ele não pegue as moedas logo que
sofrer dano (drop de moedas estilo sonic), mas o efeito colateral é que quando é atingido, por exemplo prensado na parede por inimigo, ele a atravessa.  
    
**- Acredito que a maior parte dos erros se deve à diferença de versões.** 
  
**- A maior parte das informações relevantes podem ser encontradas nos resumos disponíveis no google drive, também é possível encontrar online informações sobre a linguagem utilizada 'GdScript'.**  
  
**Link:** https://drive.google.com/drive/folders/1n84sA516w1iqNneqPOvXQcN9spUsxRVo?usp=drive_link

