//ATTENTION : RESCAPÉ (01:26)

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

int tour = 0;
int nbTours;

void setup()
{
  size (520, 520); 
  frameRate (1);
  imageMode (CENTER);
  rectMode (CENTER);
  textAlign (CENTER);
  
  coeur.positionAleatoire ();
  coeur.positionCoeurX (tour);
  coeur.positionCoeurY ();
}

void draw()
{
 nbTours = 0;
 game.stadeDebut(true);
 game.positionInitiale();
 game.render ();
 pointage.afficherPoints();
 game.sequence ();
}

void keyPressed ()  {
  updateKeyboard (true);
  updateKeyboard2 ();
}

void updateKeyboard (boolean state)  {
  if (key == ' ')  {
    println (" espace appuyé ");
   game.stadeMiseEnPlace(state);
  }
  if (key == 'c' ||  key == 'C'){
    coeur.coeurUp = state;
  }
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
