class FinalC {
  int posXF, posYF;

  FinalC() {
    posXF=width;
    posYF=height;
  }
  //funcion
  void TeQuemaste() {
    pushStyle();
    background(220, 165, 5); 
    fill(0);
    textAlign(CENTER, CENTER);
    text("¡Se termino el tiempo!\nPresiona R para reintentarlo", posXF/2, posYF/2);
    popStyle();
  }
  void Victoria() {
    pushStyle();
    background(243, 255, 0);
    fill(0);
    textAlign(CENTER, CENTER);
    text("¡Lograste cocinar el huevo!\nPresiona R para volver a jugar y C para continuar", posXF/2, posYF/2);
    popStyle();
  }
}
