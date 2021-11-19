class Obstaculo{
  //Propiedades
    float x, y, ancho, alto;
    float radColision;
    float desx;
    String tipo;
    
    PImage imagenObs ;
  //-----------------------------------------
  
  //Constructor
    Obstaculo(){
      x = random(0, 2000);
      y = 550;
      ancho = 50;
      alto = 100;
      
      tipo = "obj_" + int(random(1, 5));
      
      sortearUbicacion();
      
      imagenObs = loadImage(tipo + ".png");
       desx = -8;
    }
    
  //---------------------------------

  //Getters y Setters
  float getAncho(){
    return ancho;
  }
  float getAlto(){
    return alto;
  }
    float getX(){
      return x;
    }
    float getY(){
      return y;
    }
    float getradColision(){
      return radColision;
      
    }
    String getTipo(){
      return tipo;
    }
  
  //---------------------------------------------
  
  //Metodos
    void dibujarObstaculo(){
      pushStyle();
      pushMatrix();
      imageMode(CENTER);
      image(imagenObs, x, y, ancho, alto);
       x += desx;
        if (x <- height){
          x = 780;
        }
      popStyle();
      popMatrix();
    }
    void sortearUbicacion(){
         x = random(500, 5000);
         y = 550;
       }
       
    
}
