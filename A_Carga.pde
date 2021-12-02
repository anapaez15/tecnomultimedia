class Carga{
  PImage[] fondos = new PImage[16];
  
  Carga(){
    for(int i=0; i < 16; i++){
  fondos[i] = loadImage("Cronopio_"+nf(i, 3)+".jpg");
    }
  }
}
