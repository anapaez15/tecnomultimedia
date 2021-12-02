class Huevo {
  PImage huevito;
  int posXH, posYH, tam;
//parametros que espera el constructor que le pase
  Huevo(PImage p_huevito, int px, int py) {
    huevito=p_huevito;
    posXH=px;
    posYH=py;
    tam=25;
  } 
  void dibujar() {
    image(huevito, posXH, posYH, tam, tam);
  }
}
