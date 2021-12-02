/* Catalina Muñoz
 Ana Paez
 TP FINAL*/
Total total;


void setup() {
  size(800, 600);
  total= new Total();
}
void draw() {
  total.dibujar();
}
void mousePressed() {
  total.clickPresionado();
}
void keyPressed() {
 total.teclaPresionada();
}
