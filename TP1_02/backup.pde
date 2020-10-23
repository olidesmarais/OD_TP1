/*
//Création d'une instance pour les 4 cartes
 Coeur coeur = new Coeur ();
 Game game = new Game ();
 Carte carte = new Carte ();
 Pointage pointage = new Pointage ();

//stade du jeu
boolean gameState;
boolean deviner;
boolean boucle;

int centreX = 520 / 2;
int centreY = 520 / 2;
int overlay = 130;

int tour;
int nbTours = 0;

void setup()
{
  size (520, 520); 
  frameRate (1);
  imageMode (CENTER);
  rectMode (CENTER);
  textAlign (CENTER);
  
  coeur.positionAleatoire ();
  coeur.positionCoeurX (0);
  coeur.positionCoeurY ();
  
  game.debutDuJeu = true;
}

void draw()
{
  background (0, 255, 0);
  
  
  nbTours = 0;
  stadeDebut(true);
  game.brassage(nbTours);
  stadeMiseEnPlace(false);
  miseEnPlace(nbTours);
  
  
  game.initial();
  
  
  
  
  sequence (nbTours);
  //nbTours = 0;
    
    //do  {
//for (nbTours = 0; nbTours <10; nbTours++)  {
  
/*  game.render();
  game.cartesUp();
  pointage.afficherPoints();
  pointage.consignesDepart ();

  

   // for (tour = 0; tour <10; tour++)  {
      //game.render();
      //game.cartesUp();
      //pointage.afficherPoints();  
      
      if (gameState) {
        game.debutDuJeu = false;
      //while (gameState == true)  {
        //coeur.brassage();
        //pointage.
        //game.debutDuJeu = false;
        game.brassage(tour);
        game.cartesDown(); 
      }
      
      //while (deviner == true) {
      //do  {
      if (deviner)  {
      //while (deviner == true)   {
        pointage.bonneReponse (); 
        pointage.mauvaiseReponse ();
        //} while (gameState != true);
      } 
      
      if (boucle)  {
     // while (deviner == true)
        deviner = false;
        //nbTours++;
      }
      //while(boucle == false);
    //}
    
      //if (partie)
        //gameState = false;
        //devinerCarte();
  //  }
  //} while (nbTours <10);
   
  //tests
  /*rect( centreX, centreY - overlay, 80, 130); 
  rect( centreX, centreY + overlay, 80, 130);
  rect( centreX - overlay, centreY, 80, 130); 
  rect( centreX + overlay, centreY, 80, 130); 
}

void keyPressed ()  {
  updateKeyboard (true);
  updateKeyboard2 ();
}

void updateKeyboard (boolean state)  {
 if (key == ' ')  {
   //if (game.debutDuJeu == true) {
     stadeMiseEnPlace(state);
     //gameState = state;
   //}
   //if (deviner == true)  {
    // boucle = state;
   //}
 }
 if (key == 'c' ||  key == 'C')
   boucle = state;
}
 
void updateKeyboard2()  {
  //int x;
 if (keyCode == UP)  {
   println("fleche = haut");
   //x = 1;
   //return 1;
   indiquerCarte (1);
   //carteHaut ();
 }
 if (keyCode == DOWN)  {
   println("fleche = bas ");
   //x = 2;
   //return 2;
   indiquerCarte (2);
   //carteBas ();
 }
 if (keyCode == RIGHT)  {
   println("fleche = droite ");
   //x = 3;
   //return 3;
   indiquerCarte (3);
   //carteDroite ();
 }
 if (keyCode == LEFT)  {
   println("fleche = gauche ");
   //x = 4;
   //return 4;
   indiquerCarte (4);
   //carteBas ();
 }
 //return x;
}
*/
