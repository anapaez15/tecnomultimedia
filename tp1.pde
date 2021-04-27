// Ana Paez
// TP Circulo Cromatico
// 30 de Abril 

void setup(){
  size(500,500);
}
  void draw(){
    background (250,255,245);
 //Circulos de arriba y abajo
 //AMARRILLO
 fill(255,255,0); 
  ellipse (250,50,80,80); 
 fill(0);
 textSize(12);
  text("AMARRILLO",217,50);
 
  fill(0,0,255);
  ellipse(250,450,70,70);
  //circulos de la derecha
fill(#FF8E03);
ellipse(350,80,70,70);
fill(255,0,0);
ellipse(420,140,70,70);
fill(250,30,107);
ellipse(440,240,70,70);

//MAGENTA
fill(255,0,255);
ellipse(420,340,80,80);
textSize(12);
fill(0);
text("MAGENTA",393,340);

fill(188,13,148);
ellipse(350,420,70,70);
 
//Circulos de la izquierda
fill(184,222,72);
ellipse(150,80,70,70);
fill(#6BFF03);
ellipse(80,140,70,70);
fill(#24FFB0);
ellipse(60,240,70,70);
//CIAN
fill(0,255,255); 
ellipse(80,340,80,80);
textSize(12);
fill(0);
text("CIAN",67,340);

fill(#1F84FC);
ellipse(150,420,70,70);
}
