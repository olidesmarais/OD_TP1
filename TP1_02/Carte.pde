class Carte  {
  
  //réunir toutes les fonctions des 4 cartes
  void up ()  {
    //coeur.coeurUp = true;
    //à faire pour les autres cartes
  }
  
  void down ()  {
    //coeur.coeurUp = false;
    //à faire pour toutes les cartes
  }
  
  
  //Définition des 4 positions
  int hautX ()  {
    return centreX;
  }
  int hautY ()  {
    return centreY - overlay;
  }
  int basX ()  {
    return centreX;
  }
  int basY ()  {
    return centreY + overlay;
  }
  int droiteX ()  {
    return centreX + overlay;
  }
  int droiteY ()  {
    return centreY;
  }
  int gaucheX ()  {
    return centreX - overlay;
  }
  int gaucheY ()  {
    return centreY;
  }
  
  void render()  {
    noStroke();
  }
}
