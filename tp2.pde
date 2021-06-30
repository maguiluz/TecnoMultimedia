//TP n2 Animación Créditos
//videojuego: Tomb Raider
  //texto=título
PFont miLetra;
PFont miLetra2;
  //imagen=fondo
PImage arsenal;
PImage miFondo1; 
PImage tr;

float mapeado;

void setup(){
  size( 700, 500);
  noCursor();
  textAlign(CENTER, CENTER);
  frameRate(50);
  //cargo tipografía e imágen
  miLetra = loadFont( "Tomb_Raider-48.vlw" );
  miLetra2 = loadFont( "Dubai-Medium-48.vlw" );
  arsenal = loadImage( "arsenal.png" );
  miFondo1 = loadImage( "tr1.jpg" );
  tr = loadImage("tr 0.png");
}
void draw(){
//------------------------------------------
  //PANTALLA 1
   //imagen
   image(miFondo1, 0, 0 , width, height);
  //texto
   textSize(50);
  textFont(miLetra);
   fill(#890606);
  text("TOMB", 80, 250);
  fill(0 + (frameCount%255)); 
  text("RAIDER", 240, 250);
//------------------------------------------
   //PANTALLA 2
 if( frameCount > (5*50) ){
   background(0);
   textSize(50);
   textFont(miLetra2);
   mapeado = map(0,100,0, 0, 255);
   text("DESARROLLADOR", 350, 200);
   textSize(40);
   text("Crystal Dynamics", 350, 255);
  }
 //-----------------------------------------
   //PANTALLA 3
  if( frameCount > (10*50)){
  background(0);
  image(arsenal, mouseX, mouseY, 300, 200);
  textSize(50);
  text("DIRECTORES", 350, 200);
  textSize(40);
  text("Brian Horton", 200, 240);
  text("Daniel Neuburger", 500, 240);
  }
  //--------------------------------------
   //PANTALLA 4
   if(frameCount > (15*50)){
     background(0);
     textSize(50);
     image(arsenal, mouseX, mouseY, 300, 200);
     text("DESARROLADOR", 350, 200);
     textSize(40);
     text("Michael Brinker", 350, 255);
   }
 //----------------------------------------
   //PANTALLA 5
   if(frameCount > (20*50)){
     background(0);
     textSize(50);
     text("ARTISTAS", 350, 200);
     textSize(40);
     text("Kam Yu", 200, 240);
     text("Joshua Bapst", 500, 240);
   }
 //----------------------------------------
   //PANTALLA 6
   if(frameCount > (25*50)){
     background(0);
     textSize(50);
     text("ESCRITORA", 350, 200);
     textSize(40);
     text("Rhianna Pratchett", 350, 255);
   }
  if(frameCount > (30*50)){
    background(0);
    image(tr, mouseX, mouseY);
 
  if(frameCount > (35*50))
   frameCount = (0*50);
  }
}
