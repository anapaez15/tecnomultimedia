PImage fondo, fondo2, fondo3, fondo4, minions, dibujo,saludo;
String nombrepeli= "M  I  N  I  O  N  S";
String titulo1 = "U N I V E R S A L";
String titulo2= "Gru por Steve Carrell";
String titulo3="Bob por Pierre Coffin";
String titulo4= "Kevin por Pierre Coffin";
String titulo5= "Scarlett Overkill por Sandra Bullock";
String titulo6= "Herb Overkill por Jon Hamm";
String titulo7="Directed By";
String titulo8;
PFont  tipotitulo1, tipotitulo2;
int posY=0, despl=0, posy=400, trans=0, mov=4, tam=35;
int pantalla =0;

void setup () {
  size (600, 400);
  fondo= loadImage ("fondo1.jpg");
  fondo2=loadImage ("fondo2.jpg");
  minions=loadImage ("minions_.png");
  dibujo=loadImage("dibujom.png");
  fondo3=loadImage("fondo3.jpg");
  fondo4=loadImage("fondo4.jpg");
  tipotitulo1=loadFont("universal.vlw");
  tipotitulo2=loadFont("tipografia2.vlw");
  saludo=loadImage("saludo.png");
}
void draw () {/////////////////////////////////////////pantalla1
  image(fondo, -50, 0, width+100, height);
  textSize(100);
  fill(#F0ED8C);
  textFont(tipotitulo1);
  text (titulo1, posY-500, height/2);
  posY +=3;
  println(posY); 
  if (posY > 1200)
  {////////////////////////////////////////////////////pantalla 2
    image(fondo3, 0, 0, width, height);
    textSize(tam);
    textFont(tipotitulo2);
    fill(255, 255, 0);
    text (nombrepeli, 130, despl);
    despl +=mov;
    }
    if(despl>width/2-80){
    mov=0; 
    tam++;
    }
    if (tam>80) 
    {//////////////////////////////////////////////////pantalla3
     image (fondo4, 0, 0, width, height);
      textSize(30);
      text(titulo2, 100, posy); ///////voy sumando72
      text(titulo4, 100, 72+posy);
      text(titulo3, 100, 144+posy);
      text(titulo5, 100, 216+posy);
      text(titulo6, 100, 288+posy);
      posy +=-4;
      }
  if(posy<-288){
  //background (#4E53A5);
 // image(minions,150,-100+trans,200,150);
  fill(#FFE51F);
  textSize(30);
  text("Direccion de Pierrre Cofiin",100,-360+trans);
  text("Produccion de Chris Meledandri",100,-320+trans);
  text("Produccion de Janet Healy",100,-280+trans);
  text("Guion de Brian Lynch",100,-240+trans);
  text("Musica de Heitor Pereira",100,-200+trans);
  text("Montaje de Claire Dodgson",100,-160+trans);
   text("Narrador de Geoffrey Rush",100,-120+trans);
  trans+=4;
  } if(trans>800){
  image(saludo,width/2,height/2);
  text("Muchas bananas",width/2-100,height/2);
}
}
