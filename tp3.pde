//tp3 Ilusión óptica
//Magalí Ibañez
//https://www.youtube.com/watch?v=UJ01_fknlbc
color c1, c2;
float cant;
void setup(){
  size(600, 600);
  
  c1 = color (255); 
  c2 = color (0);
  cant = 20;
}

void draw(){
 background(0);
 noStroke();

 for( int i=0; i<cant; i++){
   float x = map( i, 0, 19, width/2, mouseX);
   float y = map( i, 0, 19, height/2, mouseY);
   float tam = map( i, 0, 19, 300, 0);
 pushMatrix();
  translate( x, y);
 if(i%2 == 0){
  fill(c2);
 }else{
  fill(c1);
 }
  circle(0, 0, tam);
 popMatrix();
 }
  
}
void mousePressed(){
  c1 = color( random(255), random(255), random(255));
  c2 = color( random(255), random(255), random(255));
}
  
void keyPressed(){
  if ( key == '+' && cant < 50 )
    cant++;
  if ( key == '-' && cant > 0 )
    cant-- ;
  if (key == ' '){
    cant = 20;
  c1 = color(0);
  c2 = color(255);
  }
 
}
