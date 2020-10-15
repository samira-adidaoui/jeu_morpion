Ce programme présente le jeu du morpion.

\\\\\\\\\  Caractéristiques : /////////

     - Deux joueurs identifiable par un prénom
     - plateaux de jeu comprenant une grille composé de 9 cases avec :
                -> Trois colonnes A, B et C
                -> Trois lignes 1, 2 et 3
        Chaque case sera donc identifié par une lettre et un chiffre
            exemple : A1 pour la première case en haut à gauche, B1 pour la seconde case en haut et au centre etc...
    
    Règle du jeu : 

    Deux joueurs s'affrontent. Ils doivent remplir chacun à leur tour une case de la grille avec le symbole qui leur est attribué : O ou X. Le gagnant est celui qui arrive à aligner trois symboles identiques, horizontalement, verticalement ou en diagonale. 
    Le joueur jouant X effectuera le premier coup de la partie. 



\\\\\\\\\  Déroulement d'une partie : /////////

1) Demander le nom de chaque joueur 
2) le programme affiche le plateau de jeu vide
3) le programme demande au joueur X où il souhaite jouer
4) le joueur jouant X déclare une case
5) le programme affiche le plateau de jeu
6) le programme demande au joueur O où il souhaite jouer
7) le joueur O déclare une case
8) le programme affiche le plateau de jeu

--> Les joueurs jouent à tour de rôle jusqu'à ce que l'un d'eux gagne ou que le plateau de jeu soit rempli : 
        -> Si l'un des joueurs gagne ===> ANNONCER LE NOM DU JOUEUR GAGNANT
        -> Si le plateau est rempli ===> PROPOSER UNE AUTRE PARTIE


\\\\\\\\\  Mise en place du programme : /////////

==> les objets : 
                - joueur X : 
                        - nom : "X"
                        - classe : Player
                        - instance : player_1

                - joueur O : 
                        - nom : "O"
                        - classe : Player
                        - instance : player_2   

                - une grille    
                        - nom : grid
                        - couleur : @white
                        - classe : Board
                        - composé de 9 cases
                - des cases 
                        - instance : morpion_grid * 9 : 
                        - classe : Gride_Box
                        A1 B1 C1
                        A2 B2 C2
                        A3 B3 C3

==> Liste de classes : 
                - Player
                - BoardCase
                - Board

        ==> Objets par classe : 
                - Player --> player_1, player_2
                - BoardCase --> A1, A2, A3, B1, B2, B3, C1, C2, C3
                - Board -->morpion_grid

==> Process : 
        1) Demander le nom des joueurs => classe Player ====> A CHAQUE DEBUT DE PARTIE

        2) Demander au joueur X de jouer        => Player
        3) Le joueur X devient l'annonceur      => Player
        4) Le joueur X annonce sa case          => Board
        5) la grille se rempli                  => BoardCase
        6) présentation de la grille            => Board
        8) Demander au joueur O de jouer        => Player
        9) le joueur X est en attente           => Player
        10) le joueur O devient annonceur       => Player
        11) Le joueur O annonce sa case         => Board
        12) La case se rempli                   => BoardCase
        13) présentation de la grille           => Board
        14) Analyse de la grille                => Board
        
        => Process qui boucle 3 fois au minimun
        => Au bout de la 3ème fois, analyse de la grille 
        => Si pas de gagant la boucle reprend en ajoutant une analyse de la grille à chaque annonce
        => Si les symboles s'alignent bien après analyse = > LE JOUEUR "" A GAGNER
                Sinon si le plateau est plein (max 9 cases) => LANCER UNE NOUVELLE PARTIE

==> Méthodes : 
        1) initialize = Définir les joueurs

        2) nommer les joueurs => player_1 / player_2____Player

        3) Annoncer sa case ==> announce_____Board

        4) Remplir la grille ==> grid_check _____BoardCase

        5) Analyse de la grille ==> grid_analyse____Board
#jeu_morpion
