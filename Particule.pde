class Particule {
  PVector position;
  PVector vitesse;
  PVector acceleration;
  float dureeVie;
  color couleur;


  Particule(PVector l) {
    acceleration = new PVector(0, 0.1);
    vitesse = new PVector();
    position = new PVector(random(640), -50);
    couleur = color(random(50), random(50), random(150,250));
    dureeVie = 150.0;
  }

  void run() {
    update();
    affiche();
  }

  void update() {
    vitesse.add(acceleration);
    position.add(vitesse);
    dureeVie -= 1.0;
  }

  void affiche() {
    noStroke();
    fill(couleur, dureeVie);
    ellipse(position.x, position.y, 3, 20);
  }

  // particule toujours vivante ?
  boolean mort() {
    if (position.y > 300) {
      return true;
    } else {
      return false;
    }
  }
}
