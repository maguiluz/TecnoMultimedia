
class Fondo{
  //Propiedades
    PImage fondoPant;
    color colorDeTexto;
    String texto;
    int alineacion;
  //int estado;
    float x, y, ancho, alto, velX;
    float t;
    String tipo;
    
  //------------------------------------
  
  //Constructor
    Fondo(String tipoPant, float x_, float y_, int ancho_, int alto_){
     x = x_;
     y = y_;
     ancho = ancho_;
     alto = alto_;
     
     tipo = tipoPant;
   
     fondoPant = loadImage(tipo + ".jpg");
     
      //velX = -10;
      
      }
      
    Fondo(String tipoPant, String texto_, color color_, int alineacion_, float x_, float y_, int ancho_, int alto_){
     x = x_;
     y = y_;
     ancho = ancho_;
     alto = alto_;
     colorDeTexto = color_;
     texto = texto_;
     alineacion = alineacion_;
     
     
     
     tipo = tipoPant;
   
     fondoPant = loadImage(tipo + ".jpg");
     
      //velX = -10;
      
      }
  //---------------------------------- -- 
  
  //Metodo
    //Fondo de pantall
        
      void dibujarPantalla(){
        image(fondoPant, ancho, alto);
      }
      
      
      void dibujarPantallaCredito(){
        image(fondoPant, ancho, alto);
        text(texto, width/2, 350);
        textAlign(CENTER);
      }
    
      /*void moverFondo(){
       image(fondoPant, x, 0, width*2, height);
         x += velX;
         if (x <- width){
           x = 0;
         }
      }   */   
}
