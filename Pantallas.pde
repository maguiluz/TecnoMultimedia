

void dibujarpantalla(PImage fondo, String texto, float x_, float y_, float size_, int alineacion_, color color_){
  pushStyle();
  image(fondo, 0, 0, width, height);
  fill(color_);
  miLetra = createFont("RobotoCondensed-Bold.ttf", 40);
  textSize(size_);
  textAlign( alineacion_);
  text(texto, x_, y_);
  popStyle();
} 
