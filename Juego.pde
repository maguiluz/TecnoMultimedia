
class Juego {

  //Propiedades
  int puntos = 0;

  Fondo fondo0, fondo1, fondo2, fondo3, fondo4;

  Personaje personaje;

  Obstaculo[] obstaculos;
  int cantObstaculos;
  
  int pantalla = 0;

  Boton boton1, boton2, boton3, boton4, boton5, boton6;

  //------------------------------------------

  //Constructor
  Juego() {

    //Botones
    boton1 = new Boton ("EMPEZAR", width/2, 400, 300, 100, 45);
    boton2 = new Boton ("Créditos", width/14, 550, 90, 50, 18);
    boton3 = new Boton ("Siguiente", 728, 550, 90, 50, 18);
    boton4 = new Boton ("VOLVER A EMPEZAR", width/2, 400, 300, 100, 30);
    boton5 = new Boton ("VOLVER A JUGAR", width/2, 400, 300, 100, 30);
    boton6 = new Boton ("Siguiente", 728, 550, 90, 50, 18);

    //fondo
    fondo0 = new Fondo("fondo_0", width, height, 0, 0);
    fondo1 = new Fondo("fondo_1", width, height, 0, 0);
    fondo2 = new Fondo("fondo_0", "Tecnología multimeda I \n Minijuego TP5 \n Magalí Luz Ibañez (88140/8)", 255, CENTER, width/2, 200, 0, 0);
    fondo3 = new Fondo("fondo_2", width, height, 0, 0);
    fondo4 = new Fondo("fondo_3", width, height, 0, 0);

    //Obstaculos
    cantObstaculos = 3;
    obstaculos = new Obstaculo[cantObstaculos];
    for (int i = 0; i < cantObstaculos; i++) {
      obstaculos[i] = new Obstaculo();
    }

    //Personaje
    personaje = new Personaje(150, 550);
  }


  //------------------------------------------

  //Metodos
  void dibujar() {

    switch(pantalla) {
    case 0:
      fondo0.dibujarPantalla();
      boton1.actualizar();
      boton2.actualizar();
      break;
    case 1:
      background(0);
      fondo1.dibujarPantalla();


      for (int i = 0; i<cantObstaculos; i++) {
        obstaculos[i].dibujarObstaculo();
      }

      personaje.dibujar();
      personaje.accionar();

      for (int i = 0; i<cantObstaculos; i++) {
        print("obstaculo " + i + " " + "tipo " + obstaculos[i].getTipo() + " " );
        if (hayColision(obstaculos[i].getX(), obstaculos[i].getY(),
          obstaculos[i].getAlto(), obstaculos[i].getAncho())) {
          obstaculos[i]=new Obstaculo();
          personaje.quitarVida();
          if (personaje.getcantVidas() == 0) {
            pantalla = 3;
            fondo3.dibujarPantalla();
          }
        }
      }
      break;
    case 2:
      fondo2.dibujarPantallaCredito();
      boton3.actualizar();
      resetearJuego();
      break;
    case 3:
      fondo3.dibujarPantalla();
      boton4.actualizar();

      resetearJuego();
      break;
    case 4:
      fondo4.dibujarPantalla();
      boton5.actualizar();
      boton6.actualizar();
      resetearJuego();
      break;
    default:
      println("no se encontro pantalla");
      break;
    }
  }

  void click() {
    switch(pantalla) {
    case 0:
      println(pantalla = 0);
      if (boton1.mouseEstaEncima()) {
        pantalla = 1;
      } else if (boton2.mouseEstaEncima()) {
        pantalla = 2;
      }
      break;
    case 1:
      println(pantalla = 1);

      fondo1.dibujarPantalla();


      personaje.dibujar();
      personaje.accionar();

      break;
    case 2:
      println(pantalla = 2);
      if (boton3.mouseEstaEncima()) {
        pantalla = 0;
      }
      break;
    case 3:
      println(pantalla = 3);
      if (boton4.mouseEstaEncima()) {
        pantalla = 0;
      }
      break;
    case 4:
      println(pantalla = 4);
      if (boton5.mouseEstaEncima()) {
        pantalla = 0;
      } else if (boton6.mouseEstaEncima()) {
        pantalla = 2;
      }
    default:
      println("no se encontro pantalla");
      break;
    }
  }

  void keyPressed() {
    if (key == ' ') {
      personaje.setSaltar(true);
      personaje.quitarSalto();
      if (personaje.getcantDeSaltos() == 0) {
        pantalla = 4;
        resetearJuego();
      }
    }
  }


  boolean hayColision(float x_obs, float y_obs, float alt_obs, float anc_obs) {
    float d = dist(x_obs, y_obs, personaje.getX(), personaje.getY());
    float xPer=personaje.getX();
    float yPer=personaje.getY();
    float altoPer=personaje.getAlto();
    float anchoPer=personaje.getAncho();
    println(d);
    if ((xPer - anchoPer/3 < x_obs + anc_obs/3) &&
      (xPer + anchoPer/3 > x_obs - anc_obs/3) &&
      (yPer - altoPer/3 < y_obs + alt_obs/3)&&
      (yPer + altoPer/3 > y_obs - alt_obs/3)) {
      //colisiona
      println("colision");
      return true;
    } else {
      return false;
    }
  }

  void resetearJuego() {
    personaje = new Personaje(150, 550);
    for (int i = 0; i < cantObstaculos; i++) {
      obstaculos[i] = new Obstaculo();
    }
  }
}
