// tp5 | tmm1 | FdA | UNLP
// com2 | Prof. Matias Jauregui Lorda

// Magalí Luz Ibañez 88140/8
// Angela Calizaya Villamonte 88298/2

//Video explicando el código - Individual
//https://youtu.be/2ambq7NF95I

// "El ingrediente misterioso"

Aventura aventura;

void setup() {
  size(800, 400);
  aventura = new Aventura();
}

void draw() {
  aventura.dibujar();
}

void mousePressed() {
  aventura.click();
}

void keyPressed() {
  aventura.mover();
}
