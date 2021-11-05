//nombre clase
class Inicio {
  //propiedades
  PImage imgInicio;
  int posX, posY ;



  //constructor
  Inicio() {
    imgInicio = loadImage("huevo_000.png");
    posX=width;
    posY=height;
  }
  //funciones o metodos
  void dibujar () {
    pushStyle();
    image(imgInicio, posX-posX, posY-posY);
    //background(6, 153, 3);
    fill(0);
    textSize(20);
    textAlign(CENTER,CENTER);
    text("Presiona ENTER para comenzar", posX/2, posY-400);
    popStyle();
  }
  void arranque() {
    if (keyCode== ENTER) {
      background(176, 204, 219);  
      juego.estadoJ=0;
    }
  }
}
