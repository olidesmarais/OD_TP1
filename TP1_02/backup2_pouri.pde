/*
//copie

//Création d'une instance pour les 4 cartes

 
 //Coeur coeur = new Coeur ();
 //Game game = new Game ();
 //Carte carte = new Carte ();
 //Pointage pointage = new Pointage ();

//stade du jeu
boolean gameState;
boolean deviner;
boolean boucle;

int centreX = 520 / 2;
int centreY = 520 / 2;
int overlay = 130;

int tour = 0;
int nbTours;

void setup()
{
  size (520, 520); 
  frameRate (1);
  imageMode (CENTER);
  rectMode (CENTER);
  textAlign (CENTER);
  
  //coeur.positionAleatoire ();
  //coeur.positionCoeurX (tour);
  //coeur.positionCoeurY ();
}

void draw()
{
  nbTours = 0;
  //game.stadeDebut(true);
  //game.positionInitiale();
  //game.render ();
  //pointage.afficherPoints();
  //game.sequence ();
}

void keyPressed ()  {
  updateKeyboard (true);
  updateKeyboard2 ();
}

void updateKeyboard (boolean state)  {
  if (key == ' ')  {
    println (" espace appuyé ");
    //if (game.stade0)  {
      println (" vers stade 1 ");
      //game.stadeMiseEnPlace(state);
    }
    //if(game.stade3)  {
      nbTours++;
      if (nbTours < 10)  {
        println (" vers stade 0 ");
       /// game.stadeDebut(state);
      } else  {
       // game.stadeFin(state);
        println (" vers stade 4 ");
      }
    }  
  }
  if (key == 'c' ||  key == 'C')
    coeur.coeurUp = state;
}
 
/*int updateKeyboard2()  {
  int n;
  if (keyCode == UP)  {
    n = 1;
    println("fleche = haut = "+ n);
    return n;
    //game.indiquerCarte (1);
 }
 if (keyCode == DOWN)  {
   n = 2;
   println("fleche = bas = " + n);
   return n;
   //game.indiquerCarte (2);
 }
 else if (keyCode == RIGHT)  {
   n = 3;
   println("fleche = droite = " + n);
   return n;
   //game.indiquerCarte (3);
 }
 else if (keyCode == LEFT)  {
   n = 4;
   println("fleche = gauche = " + n);
   return n;
   //game.indiquerCarte (4);
 }
 else {
 n = 5;
 return n;
 }

 
  void updateKeyboard2()  {
    if (keyCode == UP)  {
      println("fleche = haut");
      game.indiquerCarte (1);
   }
   if (keyCode == DOWN)  {
     println("fleche = bas ");
     game.indiquerCarte (2);
   }
   if (keyCode == RIGHT)  {
     println("fleche = droite ");
     game.indiquerCarte (3);
   }
   if (keyCode == LEFT)  {
     println("fleche = gauche ");
     game.indiquerCarte (4);
   }
   else {
   }
  }  
//}*/
