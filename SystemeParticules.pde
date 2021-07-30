class SystemeParticules {
  ArrayList<Particule> particules;
  ArrayList<Particule2> particules2;
  PVector origine;

  SystemeParticules(PVector position) {
    origine = position.copy();
    particules = new ArrayList<Particule>();
    particules2 = new ArrayList<Particule2>();
  }

  void addParticule() {
    particules.add(new Particule(origine));
  }

  void addParticule2() {
    particules2.add(new Particule2(origine));
  }

  void run() {
    for (int i = particules.size()-1; i >= 0; i--) {
      Particule p = particules.get(i);
      p.run();
      if (p.mort()) {
        positionMorte.x = p.position.x;
        positionMorte.y = p.position.y;
        particules.remove(i);
        addParticule2();
      }
    }
    for (int i = particules2.size()-1; i >= 0; i--) {
      Particule2 p = particules2.get(i);
      p.run();
      if (p.mort()) {
        particules2.remove(i);
      }
    }
  }
}
