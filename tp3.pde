/*Ana Paez
 Trabajo Practico N3
 25 de Julio
 */
int canty, cantx;
int estado=0;
float modx, mody, tamx, tamy, col;
color fondo1, fondo2;
void setup() {
  size(600, 600);
  cantx=10;
  canty =10;
  fondo1= color(#FF0062);
  fondo2=color(#6619F7);
}

void draw () {
  if (estado==0) {
    background (fondo1); //(#10101C); (#FF0062);
    modx= (float) width/cantx;
    mody = (float) height/canty;
    tamx =modx/2;
    tamy=mody/8;

    for ( int a=0; a<cantx; a++) {
      for (int j=0; j<canty; j++) {
        float dista = dist ( mouseX, mouseY, a*modx+modx/2, j*modx+mody/2);
        tamy = map (dista, 0, dist(width/2, height/2, width, height), 2, 60);
        tamx = map (dista, 0, dist(width/2, height/2, width, height), 2, 30);


        colorMode(HSB);
        color col= color (map(a, 0, cantx, 0, 255), 255, 255);
        fill(col);
        rectMode(CENTER);
        rect(a*modx+modx/2, j*modx+mody/2, tamx, tamy);
      }
    }
  } else {

    background (fondo2);
    for ( int a=0; a<cantx; a++) {
      for (int j=0; j<canty; j++) {
        float dista = dist ( mouseX, mouseY, a*modx+modx/2, j*modx+mody/2);
        tamy = map (dista, 0, dist(width/2, height/2, width, height), 2, 60);
        tamx = map (dista, 0, dist(width/2, height/2, width, height), 2, 30);


        colorMode(HSB);
        color col= color (map(a, 0, cantx, 0, 255), 255, 255);
        fill(col);
        rectMode(CENTER);
        rect(a*modx+modx/2, j*modx+mody/2, tamx, tamy);
      }
    }
  }
} 


void mousePressed () {
  {
    estado = 1;
  }
  {
    fondo2=color(random(0, 255), random(0, 255), random(0, 255));
  }
}
