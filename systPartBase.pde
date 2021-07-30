SystemeParticules sp;
PVector positionMorte = new PVector(0,0);

void setup() {
  size(640, 360);
  sp = new SystemeParticules(new PVector(width/2, -20));
}

void draw() {
  background(0);
  sp.addParticule();
  sp.run();
}
