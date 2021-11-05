class Escenario {
  int posXE, posYE, tamE;

  Escenario() {
    posXE=width;
    posYE=height;
    tamE=25;
  }
  void dibujar () {
    background(6, 153, 3);  
    fill(32, 110, 53);
    //marco del juego
    rect( (posXE-posXE), (posYE-posYE), tamE, posYE) ;
    rect( (posXE-posXE), (posYE-25), posXE, tamE)    ;           
    rect( (posXE-25), (posYE-posYE), tamE, posYE) ;
    rect( (posXE-posXE), (posYE-posYE), posXE, tamE );
  }
}
