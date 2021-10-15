//codigo fuente de mis funciones

void dibujoBotonCircular(String label_, float x_, float y_, float diam_, float size_){
  pushStyle();
  pushMatrix();
  noStroke();
  translate(x_, y_);
  fill(255);
  ellipse(0, 0, diam_, diam_);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(size_);
  text(label_, 0, 0);
  popMatrix();
  popStyle();
}

boolean colisionSupCircular(float x_, float y_, float xSup_, float ySup_, float rSup_){
  float distancia = dist(x_, y_, xSup_, ySup_);
  if(distancia < rSup_){
    return true;
  } else{
    return false;
  }
}
