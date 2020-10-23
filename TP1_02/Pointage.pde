class Pointage  {
  
  boolean reussi;
  int nbPoints;
  int points(int x)   {
    if (reussi == true)
      x++;
      return x;
  }
  
  String bravo = "Félicitations, vous faites un point !";
  String score = "Votre score : ";
  String instruction1 = "Cliquez sur";
  String instruction2 = "'espace'";
  String commencer = "pour commencer";
  String continuer = "pour continuer";
  
  //Consignes
  String pendant = "Suivez attentivement l'as de coeur";
  String avant = "Mémorisez bien l'emplacement de l'as de coeur";
  String apres = "Utilisez les flèches de votre clavier pour désigner l'as de coeur";
  
  //Fin
  String fin1 = "C'est déjà la fin du jeu";
  String fin2 = "Félicitations, vous avez fait " + nbPoints + " points";
  
  void consignesDepart ()  {
    //if (game.debutDuJeu)  {
      textSize(20);
      text( instruction1, centreX, centreY - 20);
      text( instruction2, centreX, centreY);
      text( commencer, centreX, centreY + 20);
    //}
  }
  
  void afficherPoints ()  {
    fill(0);
    textSize(20);
    text(score + points(0), centreX + overlay + overlay / 3, overlay / 4);
  }
  void consignesAvant ()  {
    textSize(22);
    text( avant, centreX, (2*centreY)-(overlay/6)); 
  }
  void consignesPendant ()  {
    textSize(28);
    text( pendant, centreX, (2*centreY)-(overlay/6)); 
  }
  void consignesApres ()  {
    textSize(16);
    text( apres, centreX, (2*centreY)-(overlay/6)); 
  }

  void bonneReponse ()  {
      textSize(28);
      text( bravo, centreX, (2*centreY)-(overlay/6)); 
      textSize(20);
      text( instruction1, centreX, centreY - 20);
      text( instruction2, centreX, centreY);
      text( continuer, centreX, centreY + 20);
  }
  void mauvaiseReponse () {
      textSize(28);
      text( bravo, centreX, (2*centreY)-(overlay/6)); 
      textSize(20);
      text( instruction1, centreX, centreY - 20);
      text( instruction2, centreX, centreY);
      text( continuer, centreX, centreY + 20);
  }
  
  void finale ()  {
    text (fin1, centreX, centreY + 30);
    text (fin2, centreX, centreY);
  }
}
