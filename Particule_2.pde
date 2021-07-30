class Particule2 {
  PVector position;
  float dureeVie;
  color couleur;


  Particule2(PVector l) {
    position = new PVector(positionMorte.x, positionMorte.y);
    couleur = color(random(50), random(50), random(150,250));
    dureeVie = 50.0;
  }

  void run() {
    update();
    affiche();
  }

  void update() {
    dureeVie -= 1.0;
  }

  void affiche() {
    noStroke();
    fill(couleur, dureeVie);
    ellipse(position.x, position.y, 15, 3);
  }
  
  boolean mort() {
    if (dureeVie == 0) {
      return true;
    } else {
      return false;
    }
  }
  
}
