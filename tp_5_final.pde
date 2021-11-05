/*
 Catalina Muñoz 
 Ana Paez
 4/11/2021
 "Trabajo práctico #5 - Video Juego"
 */
Juego juego;
void setup() {
  size(800, 600);
  juego = new Juego();
}
void draw() {
  juego.dibujar();
}
void keyPressed() {
  juego.teclaPresionada();
}
