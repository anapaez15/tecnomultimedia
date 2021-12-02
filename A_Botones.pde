class Botones {
  int px, py, ancho, alto;
Carga carga;
Texto texto;

  Botones() {
    carga= new Carga();
    texto= new Texto();
  }
  void botonDibujado(int px, int py, int ancho, int alto) {//crea boton
    if (botonOver(mouseX, mouseY, px, py, ancho, alto)) {
      fill(0, 150, 240);
    } else {
      fill(0, 0, 255);
    }
    rect(px, py, ancho, alto, alto/4);
  }
  boolean botonPressed(int mx, int my, int px, int py, int ancho, int alto) {// mouse, ubicacion y tamaño
    boolean presionado = mx>px && mx<px+ancho && my>py&&my<py+alto == true;
    return presionado;
  }
  boolean botonOver(int mx, int my, int px, int py, int ancho, int alto) {
    if (mx>px && mx<px+ancho && my>py && my<py+alto) {
      return true;
    } else {
      return false;
    }
  }
  void cronopio() {
  image(carga.fondos[1], 0, 0, width, height);
  botonDibujado(50, 50, 150, 50);//llave opcion
  text(texto.textos[2], 30, 40);//Buscaba la llave
  botonDibujado(500, 50, 150, 50);//huevo
  text(texto.textos[1], 450, 40);//Queria hacerse un huevo frito
}
void llave() {
  image(carga.fondos[5], 0, 0, width, height);
  text(texto.textos[4], 330, 50);//mesa de luz(texto)
  botonDibujado(310, 60, 150, 50);//mesa de luz(opcion)
  text(texto.textos[5], 350, 150);//sillon(texto)
  botonDibujado(310, 160, 150, 50);//sillon(opcion)
  text(texto.textos[6], 400, 255);//ventana(texto)
  botonDibujado(450, 276, 150, 50);//ventana(opcion)
  pushStyle();
  textSize(15);
  fill(0);
  text(texto.textos[2], 20, 40);
  popStyle();
}
void mesadeluz() {
  image(carga.fondos[9], 0, 0, width, height);
  text(texto.textos[22], 330, 255);
  botonDibujado(320, 276, 150, 50);
  pushStyle();
  textSize(15);
  fill(0);
  text(texto.textos[4], 20, 200);
  popStyle();
}
void dormitorio() {
  image(carga.fondos[10], 0, 0, width, height);
  text(texto.textos[22], 330, 255);   
  botonDibujado(310, 276, 150, 50);
  pushStyle();
  textSize(15);
  fill(0);
  text(texto.textos[12], 20, 230);
  text(texto.textos[13], 20, 250);
  popStyle();
}
void casa1() {
  image(carga.fondos[8], 0, 0, width, height);
  text(texto.textos[22], 330, 255);   
  botonDibujado(310, 276, 150, 50);
  pushStyle();
  textSize(15);
  fill(0);
  text(texto.textos[14], 20, 200);
  popStyle();
}
void detiene() {
  image(carga.fondos[12], 0, 0, width, height);
  text(texto.textos[22], 330, 255);   
  botonDibujado(310, 276, 150, 50);
  pushStyle();
  textSize(15);
  fill(0);
  text(texto.textos[15], 20, 200);
  popStyle();
}
void necesita() {
  image(carga.fondos[13], 0, 0, width, height);
  text(texto.textos[20], 330, 255);   
  botonDibujado(310, 276, 150, 50);
  pushStyle();
  textSize(15);
  fill(0);
  text(texto.textos[16], 20, 200);
  popStyle();
}
void fin() {
  image(carga.fondos[15], 0, 0, width, height);
  text(texto.textos[23], 200, 230);
  botonDibujado(160, 250, 150, 50);
}
void sillon() {
  image(carga.fondos[6], 0, 0, width, height);
  text(texto.textos[22], 210, 45);
  botonDibujado(200, 50, 150, 50);
  pushStyle();
  textSize(15);
  fill(0);
  text(texto.textos[5], 210, 300);
  popStyle();
}
void living() {
  image(carga.fondos[7], 0, 0, width, height);
  text(texto.textos[22], 210, 45);
  botonDibujado(200, 50, 150, 50);
  pushStyle();
  textSize(15);
  fill(0);
  text(texto.textos[17], 210, 230);
  text(texto.textos[18], 210, 250);
  popStyle();
}
void ventana() {
  image(carga.fondos[14], 0, 0, width, height);
  text(texto.textos[20], 260, 45);
  botonDibujado(250, 50, 150, 50);
  pushStyle();
  textSize(15);
  fill(0);
  text(texto.textos[19], 260, 300);
  popStyle();
}
void sal() {
  image(carga.fondos[3], 0, 0, width, height);
  text(texto.textos[22], 260, 45);
  botonDibujado(250, 50, 150, 50);
  pushStyle();
  textSize(15);
  fill(0);
  text(texto.textos[9], 220, 200);
  popStyle();
}
void come() {
  image(carga.fondos[3], 0, 0, width, height);
  text(texto.textos[22], 260, 45);
  botonDibujado(250, 50, 150, 50);
  pushStyle();
  textSize(15);
  fill(0);
  text(texto.textos[10], 260, 200);
  popStyle();
}
void limpia() {
  image(carga.fondos[4], 0, 0, width, height);
  text(texto.textos[22], 260, 45);
  botonDibujado(250, 50, 150, 50);
  pushStyle();
  textSize(15);
  fill(0);
  text(texto.textos[11], 200, 200);
  popStyle();
}
}
