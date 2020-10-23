
class Coeur extends Carte
{
  int coeurX;
  int coeurY;
  boolean coeurUp = false;
  
  //Position de la carte à chaque tour
  int posAleaCoeur[] = new int[11];
  int posCoeurX [] = new int [11];
  int posCoeurY [] = new int [11];
  int tour;

 //Génération des positions des cartes
  void positionAleatoire ()  {  
    for (tour = 0; tour<10; tour++)  {
      posAleaCoeur[tour] = int(random(1, 5));
      //println("tour :" + tour + " position : " + posAleaCoeur[tour]);
    }
  }
  
  void positionCoeurX (int x)  {
    for (tour = 0; tour < 11; tour++)  {
      //println("tour :" + tour + " position : " + posAleaCoeur[tour]);
      switch(posAleaCoeur[tour]) {
        case (1) : {
          //x = carte.hautX();
          //y = carte.hautY();
          break;
        }
        case (2) :  {
          //x = carte.basX();
          //y = carte.basY();
          break;
        }
        case (3) :  {
          //x = carte.droiteX();
          //y = carte.droiteY();
          break;
        }
        case (4) :  {
          //x = carte.gaucheX();
          //y = carte.gaucheY();
          break;
        }
      }
    posCoeurX[tour] = x;
    println("tour :" + tour + " position : " + posAleaCoeur[tour] + " emplacement : " + posCoeurX[tour]);
    //return x;
    }
  }
  
  void positionCoeurY ()  {
    for (tour = 0; tour < 11; tour ++)  {
      if (posCoeurX[tour] == carte.hautX())
        posCoeurY[tour] = carte.hautY();
      if (posCoeurX[tour] == carte.basX())
        posCoeurY[tour] = carte.basY();
      if (posCoeurX[tour] == carte.droiteX())
        posCoeurY[tour] = carte.droiteY();
      if (posCoeurX[tour] == carte.gaucheX())
        posCoeurY[tour] = carte.gaucheY();
    }
  }

  
  void render()  {
    PImage asCoeur = loadImage ("AsCoeur.png");
    PImage versoCarte = loadImage ("VersoCarte.png");
    
    if(coeurUp)  {
      image( asCoeur, coeurX, coeurY);
    }
      else {
      image (versoCarte, coeurX, coeurY);
      } 
  }
  
  
  void setCoeurX (int coeurX)  {
    coeurX = coeurX;
  }
  int getCoeurX()  {
    return this.coeurX;
  }
  int getCoeurY()  {
    return this.coeurY;
  }
  
  boolean getCoeurUp()  {
    return this.coeurUp;    
  }
  boolean coeurPlace;
  boolean coeurDeplacement;
  
  void brassageCoeur ()  {
    println ("brassage coeur activé");
    coeurX = nextCoeurX(coeurX);
    coeurY = nextCoeurY(coeurY);
    if (coeurX != posCoeurX[0])  {
      coeurDeplacement = true;
    }
    if (/*(coeurDeplacement == true) && */(coeurX == posCoeurX[1]) && (coeurY == posCoeurY[1]))  {
      coeurPlace = true;
    }
  }
  
   int nextCoeurX (int x) {
     if (x < posCoeurX[1])  {
       x += 10;
       return (x);
     }
     else {
       x -= 10;
       return (x);
     }
   }
   int nextCoeurY (int y) {
     if (y < posCoeurY[1])  {
       y += 10;
       return (y);
     }
     else {
       y -= 10;
       return (y);
     }
   }
 }
