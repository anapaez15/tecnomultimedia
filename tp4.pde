/*
Ana Paez
 Comision 3
 Aventura Grafica
 
 */
int pantalla = 0;
String estado;
//declaracion de arreglos
String []  textos= new String[12];
PImage [] imageFondo= new PImage [12];

void setup () {
  size(600, 600);
  {
    // Cargo de imagenes
    for (int i = 0; i < 12; i++) {
      imageFondo[i] = loadImage("pantalla" + nf(i, 3)+ ".jpg");
    } 
    //inicializo el text
    comienzotext();
  }
}
void draw() {
  if (pantalla==0) {
   // background (255);
    image (imageFondo[0], 0, 0, width, height);
    textSize(30);
    fill(0);
    text(textos[0], 180, 100);
    dibujaBoton ("Comenzar", width/2, 500, 150);
  } else if (pantalla == 1) {
    image (imageFondo[1], 0, 0, width, height);
    textSize(20);
    fill(0);
    text(textos[1], 160, 550);
    dibujaBoton ("recorrido oficial", 500, 500, 80);
    dibujaBoton ("nuevo camino", 100, 500, 80);
  } else if (pantalla == 2) {
    image (imageFondo[2], 0, 0, width, height);
    textSize(20);
    fill(0);
    text(textos[2], 360, 150);
    dibujaBoton ("seguir camino", 300, 500, 80);
  } else if (pantalla == 3) {
    image (imageFondo[3], 0, 0, width, height);
    textSize(12);
    fill(0);
    text(textos[3], 250, 350);
    dibujaBoton ("encontrar refugio", 500, 500, 80);
    dibujaBoton ("seguir camino", 100, 500, 80);
  } else if (pantalla == 4) {
    image (imageFondo[4], 0, 0, width, height);
    textSize(15);
    fill(0);
    text(textos[4], 30, 150);
    dibujaBoton ("ayuda", 350, 500, 80);
  } else if (pantalla == 5) {
    image (imageFondo[5], 0, 0, width, height);
    textSize(15);
    fill(0);
    text(textos[5], 110, 450);
    dibujaBoton ("retomar camino", 500, 500, 80);
    dibujaBoton ("esperar que pare", 100, 500, 80);
  } else if (pantalla == 6) {
    image (imageFondo[6], 0, 0, width, height);
    textSize(16);
    fill(0);
    text(textos[6], 10, 60);
    dibujaBoton ("Subir", 500, 200, 80);
  } else if (pantalla == 7) {
    image (imageFondo[7], 0, 0, width, height);
    textSize(20);
    fill(0);
    text(textos[7], 89, 50);
    dibujaBoton ("Volver a inicio", 300, 550, 80);
  } else if (pantalla == 8) {
    image (imageFondo[8], 0, 0, width, height);
    textSize(15);
    fill(0);
    text(textos[8], 33, 70);
    dibujaBoton ("volver a inicio", 300, 500, 80);
  } else if (pantalla == 9) {
    image (imageFondo[9], 0, 0, width, height);
    textSize(15);
    fill(255);
    text(textos[9], 10, 550);
    dibujaBoton ("Volver a empezar", 300, 50, 80);
  } else if (pantalla == 10) {
    image (imageFondo[10], 0, 0, width, height);
    textSize(15);
    fill(0);
    text(textos[10], 30, 80);
    dibujaBoton ("Volver a refugio", 500, 500, 80);
    dibujaBoton ("Seguir camino", 100, 500, 80);
  } else if (pantalla == 11) {
    image (imageFondo[11], 0, 0, width, height);
    textSize(15);
    fill(0);
    text(textos[11], 30, 100);
    dibujaBoton ("volver al refugio", 300, 500, 80);
  }
  //ubicacion de pantallas
  println(pantalla);
}




void mouseReleased() {
  if (pantalla == 0) {
    if (colisiondeBoton (mouseX, mouseY, width/2, 500, 150)) {
      pantalla = 1;
    }
  } else if (pantalla==1) {
    if (colisiondeBoton (mouseX, mouseY, 500, 500, 80)) {
      pantalla= 5;
    } 
    if (colisiondeBoton (mouseX, mouseY, 100, 500, 80)) {
      pantalla=2;
    }
  } else if (pantalla == 2) {
    if (colisiondeBoton (mouseX, mouseY, 300, 500, 80)) {
      pantalla = 3;
    }
  } else if (pantalla == 3) {
    if (colisiondeBoton (mouseX, mouseY, 500, 500, 80)) {
      pantalla= 10;
    }
    if (colisiondeBoton(mouseX, mouseY, 100, 500, 80)) {
      pantalla=4;
    }
  } else if (pantalla == 4) {
    if (colisiondeBoton(mouseX, mouseY, 350, 500, 80)) {
      pantalla=9;
    }
  } else if (pantalla == 5) {
    if ( colisiondeBoton (mouseX, mouseY, 500, 500, 80)) {
      pantalla= 11;
    }  
    if   (colisiondeBoton (mouseX, mouseY, 100, 500, 80)) {
      pantalla=6;
    }
  } else if (pantalla == 6) {
    if (colisiondeBoton(mouseX, mouseY, 500, 200, 80)) {
      pantalla=7;
    }
  } else if (pantalla == 7) {
    if (colisiondeBoton(mouseX, mouseY, 300, 550, 80)) {
      pantalla=0;
    }
  } else if (pantalla == 8) {
    if (colisiondeBoton(mouseX, mouseY, 300, 500, 80)) {
      pantalla=0;
    }
  } else if (pantalla == 9) {
    if (colisiondeBoton(mouseX, mouseY, 300, 50, 80)) {
      pantalla=8;
    }
  } else if (pantalla == 10) {
    if (colisiondeBoton(mouseX, mouseY, 500, 500, 80)) {
      pantalla=6;
    }
    if (colisiondeBoton(mouseX, mouseY, 100, 500, 80)) {
      pantalla=8;
    }
  } else if (pantalla == 11) {
    if (colisiondeBoton(mouseX, mouseY, 300, 500, 80)) {
      pantalla=5;
    }
  }
}
