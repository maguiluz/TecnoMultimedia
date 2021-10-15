//TP4 "Aventura gráfica"
//Ibañez, Magalí Luz (88140/8)
//link al video: https: //www.youtube.com/watch?v=Uh5mzdMVU8w
//Flujo de mi aventura: https://drive.google.com/drive/folders/1XEKeIjxitj-o3_eFZ7rn3fmhgleUOxo7?usp=sharing

int pantalla = 0;

PFont miLetra;

PImage[] fondosDePantallas = new PImage[15];

void setup(){
  size(800, 600);
   miLetra = createFont("RobotoCondensed-Bold.ttf", 40);
  for( int i = 0; i < fondosDePantallas.length ; i++){
    fondosDePantallas[i] = loadImage("fondo_0" + i + ".jpg");
  }
  println("Cantidad de pantallas: " + fondosDePantallas.length);
}

void draw(){
  //Inicio
  switch(pantalla) {
   case 0: 
    dibujarpantalla(fondosDePantallas[0], "Aprete (Empezar) para continuar", width/2, height/2, 40, CENTER, 255);
    dibujoBotonCircular("Empezar", width/2, 450, 170, 40);
    dibujoBotonCircular("Créditos", width/14, 550, 70, 15);
    break;
   case 1: 
    dibujarpantalla(fondosDePantallas[1], "¿Dónde estoy?... este lugar es oscuro... \n ¿Jack me dejó sola?", width/2, 500, 23, CENTER, #FFFF00);
    dibujoBotonCircular("Siguiente", 730, 550, 70, 15);
    break;
   case 2: 
    dibujarpantalla(fondosDePantallas[2], "Una luz ténue me deja ver algunos objetos de la habitación \n ¿Qué debería elegir?", width/2, 500, 23, CENTER, #FFFF00);
    dibujoBotonCircular("Linterna", 240, 300, 100, 23);
    dibujoBotonCircular("Piqueta", 540, 300, 100, 23); 
    break;
   case 3: 
    dibujarpantalla(fondosDePantallas[3], "Okey... esto me servirá para defenderme mientras \n espero en este lugar hasta que alguien me ayude", width/2, 500, 23, CENTER, #FFFF00);
    dibujoBotonCircular("Volver al \n Inicio", 730, 550, 77, 17);
    break;
   case 4: 
    dibujarpantalla(fondosDePantallas[4], "Mejor investigo el resto de las habitaciones, \n parece ser una casa abandonada \n Espero encontrar rápido la salida de éste horrendo lugar", width/2, 500, 23, CENTER, #FFFF00);
    dibujoBotonCircular("Siguiente", 730, 550, 70, 15);
    break;
   case 5: 
    dibujarpantalla(fondosDePantallas[5], "Este cuarto parece tener una salida pero, \n ¿Por dónde salgo?", width/2, 500, 30, CENTER, #FFFF00);
    dibujoBotonCircular("Puerta \n cerrada", 240, 300, 100, 20);
    dibujoBotonCircular("Ventana", 540, 300, 100, 23);
    break;
   case 6: 
    dibujarpantalla(fondosDePantallas[6], "Definitivamente esta puerta no tiene ninguna salida \n voy a seguir investigando los demás cuartos", width/2, 500, 23, CENTER, #FFFF00);
    dibujoBotonCircular("Volver al \n Inicio", 730, 550, 77, 17);
    break;
   case 7: 
    dibujarpantalla(fondosDePantallas[7], "Por fin veo luz del día... ¡¿Dónde estoy exactamente?! \n ¿debería ir a investigar las calles o volver adentro?... \n ¿A todo esto Jack dónde está? ", width/2, 50, 24, CENTER, #FFFF00);
    dibujoBotonCircular("volver a \n la casa", 240, 300, 100, 20);
    dibujoBotonCircular("Seguir \n recorriendo ", 540, 300, 107, 20);
    break;
   case 8: 
    dibujarpantalla(fondosDePantallas[8], "Voy a seguir recorriendo las habitaciones, \n aunque quiero salir corriendo de esta casa", width/2, 500, 23, CENTER, #FFFF00);
    dibujoBotonCircular("Volver al \n Inicio", 730, 550, 77, 17);
    break;
   case 9: 
    dibujarpantalla(fondosDePantallas[9], "Este local me da desconfianza... \n ¿Esa persona de espalda es Jack? \n -Hola...(llama a esa persona) \n -¡Jade! te estaba buscando(contesta) \n -Yo también, que alegría verte. ¿Sabés en dónde estamos? \n -No, pero quiero huir de aquí", width/2, 200, 30, CENTER, #FFFF00);
    dibujoBotonCircular("Siguiente", 730, 550, 70, 15);
    break;
   case 10: 
    dibujarpantalla(fondosDePantallas[10], "Ahora que estamos juntos, debo tomar una decisión", width/2, 530, 30, CENTER, #FFFF00);
    dibujoBotonCircular("Seguir con \n  Jack", 240, 300, 100, 20);
    dibujoBotonCircular("Irme \n sola", 540, 300, 107, 20);
    break;
   case 11: 
    dibujarpantalla(fondosDePantallas[11], "Nunca debí irme sola... \n Tomé una mala decisión", width/2, 500, 23, CENTER, #FFFF00);
    dibujoBotonCircular("Volver al \n Inicio", 730, 550, 77, 17);
    break;
    case 12: 
    dibujarpantalla(fondosDePantallas[12], "Dos son mejor que uno dice el dicho... \n me pregunto cuándo terminara esta tortura", width/2, 500, 23, CENTER, #FFFF00);
    dibujoBotonCircular("Siguiente", 730, 550, 70, 15);
    break;
    case 13: 
    dibujarpantalla(fondosDePantallas[13], "Todo terminó al fin, es tiempo de volver \n al lugar al cual pertenecemos \n Con el tiempo sabré que todo tiene una razón", width/2, 400, 30, CENTER, #FFFF00);
    dibujoBotonCircular("Siguiente", 730, 550, 70, 15);
    break;
    case 14: 
    dibujarpantalla(fondosDePantallas[14], "Tecnología multimeda I \n Aventura gráfica TP4 \n Magalí Luz Ibañez (88140/8)", width/2, 200, 35, CENTER, 255);
    break;
   default:             
    println("No se encontro la pantalla");   
    break;
  }
}
void mousePressed(){
  
  switch(pantalla) {
   case 0: 
    println("pantalla_00" + "pantalla_014"); 
    if (colisionSupCircular(mouseX, mouseY, width/2, 450, 170)){
      pantalla = 1;
    } else {
        if (colisionSupCircular(mouseX, mouseY, width/14, 550, 70)){
        pantalla = 14;
        }
    }
    break;
   case 1: 
    println("pantalla_01");
     if (colisionSupCircular(mouseX, mouseY, 730, 550, 70)){
       pantalla = 2;
    }  
    break;
   case 2: 
    println("pantalla_02");
     if (colisionSupCircular(mouseX, mouseY, 540, 300, 100)){
        pantalla = 3;
      } else {
        if (colisionSupCircular(mouseX, mouseY, 240, 300, 100)){
        pantalla = 4;
        }
    }  
    break;
   case 3: 
    println("pantalla_03");  
    if (colisionSupCircular(mouseX, mouseY, 730, 550, 77)){
       pantalla = 0;
    }
    break;
   case 4: 
    println("pantalla_04");  
    if (colisionSupCircular(mouseX, mouseY, 730, 550, 70)){
       pantalla = 5;
   }
    break;
   case 5: 
    println("pantalla_05"); 
    if (colisionSupCircular(mouseX, mouseY, 240, 300, 100)){
        pantalla = 6;
      } else {
        if (colisionSupCircular(mouseX, mouseY, 540, 300, 100)){
        pantalla = 7;
        }
    }
    break;
   case 6: 
    println("pantalla_06"); 
    if (colisionSupCircular(mouseX, mouseY, 730, 550, 77)){
       pantalla = 0;
   }
    break;
   case 7: 
    println("pantalla_07"); 
    if (colisionSupCircular(mouseX, mouseY, 540, 300, 107)){
        pantalla = 9;
      }else {
        if (colisionSupCircular(mouseX, mouseY, 240, 300, 100)){
        pantalla = 8;
        }
    }
    break;
   case 8: 
    println("pantalla_08");
    if (colisionSupCircular(mouseX, mouseY, 730, 550, 77)){
       pantalla = 0;
   }
    break;
   case 9: 
    println("pantalla_09");  
    if (colisionSupCircular(mouseX, mouseY, 730, 550, 70)){
        pantalla = 10;
      }
    break;
   case 10: 
    println("pantalla_010'");  
    if (colisionSupCircular(mouseX, mouseY, 540, 300, 107)){
        pantalla = 11;
      }else {
        if (colisionSupCircular(mouseX, mouseY, 240, 300, 100)){
        pantalla = 12;
        }
    }
    break;
   case 11: 
    println("pantalla_011"); 
    if (colisionSupCircular(mouseX, mouseY, 730, 550, 77)){
        pantalla = 0;
      }
    break;
    case 12: 
    println("pantalla_012"); 
    if (colisionSupCircular(mouseX, mouseY, 730, 550, 70)){
        pantalla = 13;
      }
    break;
    case 13: 
    println("pantalla_013"); 
    if (colisionSupCircular(mouseX, mouseY, 730, 550, 70)){
        pantalla = 14;
      }
    break;
    case 14: 
    println("pantalla_014"); 
    break;
   default:             
    println("No se encontro la pantalla");   
    break;
  }
}

void keyPressed(){
  if (key == ' ' && pantalla == 14)
  pantalla = 0; 
}
