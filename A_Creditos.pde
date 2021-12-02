class Creditos {
  PImage imagen;
  String texto, text;
  int posXI, posYI, posYT;



  Creditos(  PImage p_imagen, String p_texto) {


    imagen=p_imagen;
    texto=p_texto;

    posXI=0;               //posX de img
    posYI=0;

    posYT=600;
  }


  void dibujar() {
    image(imagen, posXI, posYI, width, height);
    fill(0);
    pushStyle();
    textAlign(CENTER);
    text(texto, 400, posYT);
    popStyle();
    if (posYT==-100) { //movimiento
      posYT=800;
    } else {
      posYT=posYT-2;
    }
  }
}
