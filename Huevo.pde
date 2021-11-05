class Huevo {
  PImage huevito;
  int posXH, posYH, tam;

  Huevo(PImage p_huevito, int px, int py) {
    huevito=p_huevito;
    posXH=px;
    posYH=py;
    huevito = loadImage("huevo_003.png");
    tam=25;
  } 
  void dibujar() {
    image(huevito, posXH, posYH, tam, tam);
  }
}
