class Game  {
  
  int tour;
  
  void sequence ()  {
    game.render();
    pointage.afficherPoints();
    debut();
    miseEnPlace();
    deviner();
    reponse();
    analyserReponse();
  }
  
  void debut ()  {
    if (stade0)  {
      positionInitiale ();
      pointage.consignesDepart ();
      carte.up();
      pointage.consignesAvant();
    }
  }
  
  void positionInitiale ()  {
    coeur.coeurX = coeur.posCoeurX[0];
    coeur.coeurY = coeur.posCoeurY[0];
    //à faire pour les autres cartes
  }
  
  void miseEnPlace ()  {
    if (stade1)  {
      stadeDebut(false);
      render();
      carte.down();
      brassage ();
      pointage.afficherPoints();
      pointage.consignesPendant();
      placement();
      if (cartesPlacees == true)  {
        stadeDeviner(true);
      }
    }
  }
  
  void brassage ()  {
    println(" Brassage activé ");
    while (!coeur.coeurPlace)  {
      coeur.brassageCoeur();
    }
    //à faire pour les autres cartes
  }
  
  boolean cartesPlacees;

  void placement ()  {
    if (coeur.coeurPlace)// &&les autres cartes)
      cartesPlacees = true;
      println ("cartes placées : " + cartesPlacees);
  }
  
  void deviner ()  {
    if (stade2)  {
      stadeMiseEnPlace(false);
      render();
      pointage.consignesApres();
      pointage.afficherPoints();
      analyserReponse();
      carte.render();
    }
  }
  
  void analyserReponse ()  {
    //carteHaut();
    //carteBas();
    //carteDroite();
    //carteGauche();
    updateKeyboard2();
    //indiquerCarte(updateKeyboard2());
    //loop();
    //updateKeyboard2();
    if (coeur.coeurUp == true)  { //||les autres cartes  
      stadeReponse(true);
    }
  }
  
  void reponse ()  {
    if (stade3)  {
      stadeDeviner(false);
      render();
      pointage.afficherPoints();
      reactionReponse();
      pointage.bonneReponse();
      pointage.mauvaiseReponse();
    }
  }
  
  void reactionReponse ()  {
    if (pointage.reussi)  {
      pointage.bonneReponse();
    } else  {
      pointage.mauvaiseReponse();
    }
  }
  
  void fin ()  {
    if(stade4)  {
      stadeReponse(false);
      render();
      pointage.finale ();
    }
  }
  
  //Association des cartes aux touches
  void indiquerCarte (int x)  {
    println(" indiquer + x = " + x);
    //x = ;
    switch (x)  {
      case 1 :  {
        carteHaut();
        println("carte haut");
        break;
      }
      case 2 :  {
        carteBas();
        println("carte bas");
        break;
      }
      case 3 :  {
        carteDroite();
        println("carte droite");
        break;
      }
      case 4 :  {
        carteGauche();
        println("carte gauche");
        break;
      }
    }
  }
  
  void carteHaut()  {
    if ((coeur.coeurX == carte.hautX())&&(coeur.coeurY == carte.hautY())){
      println(" carte = haut (1) ");
      coeur.coeurUp = true;
      pointage.reussi = true;
      coeur.render();
      println(" statut = " + coeur.coeurUp);
    }
  }
   
  void carteBas ()  {
    if ((coeur.coeurX == carte.basX())&&(coeur.coeurY == carte.basY()))  {
      println(" carte = bas (2) ");
      coeur.coeurUp = true;
      pointage.reussi = true;
      coeur.render();
      println( " statut = " + coeur.coeurUp);
    }
  }
  
  void carteDroite()  {
    if ((coeur.coeurX == carte.droiteX())&&(coeur.coeurY == carte.droiteY()))  {
      println(" carte = droite (3) ");
      coeur.coeurUp = true;
      pointage.reussi = true;
      coeur.render();
      println(" statut = " + coeur.coeurUp);
    }
  }
  
  void carteGauche()  {
    if ((coeur.coeurX == carte.gaucheX())&&(coeur.coeurY == carte.gaucheY()))  {
      println(" carte = gauche (4) ");
      coeur.coeurUp = true;
      pointage.reussi = true;
      coeur.render();
      println(" statut = " + coeur.coeurUp);
    }
    //à faire pour toutes les cartes
    //mais avez reussi = false;
  }
  
  //stades du jeu
  boolean stade0, stade1, stade2, stade3, stade4;
  
  void stadeDebut (boolean state)  {
    stade0 = state;
    println(" stade 0 (debut) = " + stade0);
  }
  
  void stadeMiseEnPlace (boolean state)  {
    stade1 = state;
    println(" stade 1 (mise en place) = " + stade1);
  }
  
  void stadeDeviner (boolean state)  {
    stade2 = state;
    println(" stade 2 (deviner) = " + stade2);
  }

  void stadeReponse (boolean state)  {
    stade3 = state;
    println(" stade 3 (reponse) = " + stade3);
  }
  
  void stadeFin (boolean state)  {
    stade4 = state; 
    println(" stade 4 (Terminer) = " + stade4);
  }
  
  void render ()  {
    background (0, 255, 0);
    coeur.render ();
    //à faire pour les autres cartes
  }
  
}
