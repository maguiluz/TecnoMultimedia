//TP n°5 "Mini Jeugo" - Tecnología multimedia
//Ibañez Magalí Luz
//Legajo = (88140/8)
//Link al video explicativo
//https://www.youtube.com/watch?v=JQN_gE_wT-0


Juego juego;

void setup(){
  size(800, 600);
  juego = new Juego();
}

void draw(){
  juego.dibujar();
}

void mousePressed(){
  juego.click();
}

void keyPressed(){
  juego.keyPressed();
}
