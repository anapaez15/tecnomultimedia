class Total {


  String estado;

  Carga carga;
  Texto texto;
  Creditos Creditos;
  Juego juego;
  Botones botones;




  Total() {



    estado = "comienzo";



    botones= new Botones();
    juego     = new Juego();

    carga     = new Carga();
    texto     = new Texto();
    Creditos    =new Creditos(carga.fondos[1], texto.textos[24]);
  }

  void dibujar() {
    if (estado.equals("comienzo")) {
      image(carga.fondos[0], 0, 0, width, height);
      botones.botonDibujado(500, 50, 260, 50);
      text(texto.textos[21], 600, 40);
      text(texto.textos[25], 200, 40);
      botones.botonDibujado(100, 50, 260, 50);
    } else if (estado.equals("cronopio")) {
      botones.cronopio();
    } else if (estado.equals("jugando")) {
      // botones.huevo();
      juego.dibujar();
    } else if (estado.equals("llave")) {
      botones.llave();
    } else if (estado.equals("mesadeluz")) {
      botones.mesadeluz();
    } else if (estado.equals("dormitorio")) {
      botones.dormitorio();
    } else if (estado.equals("casa1")) {
      botones.casa1();
    } else if (estado.equals("fin")) {
      botones.fin();
    } else if (estado.equals("sillon")) {
      botones.sillon();
    } else if (estado.equals("living")) {
      botones.living();
    } else if (estado.equals("ventana")) {
      botones.ventana();
    } else if (estado.equals("detiene")) {
      botones.detiene();
    } else if (estado.equals("necesita")) {
      botones.necesita();
    } else if (estado.equals("come")) {
      botones.come();
    } else if (estado.equals("creditos")) {
      Creditos.dibujar();
      text(texto.textos[26], 60, 40);
      botones.botonDibujado(10, 50, 150, 50);
    }
  }
  void clickPresionado() {
    if (estado.equals("comienzo")) {
      if (botones.botonPressed(mouseX, mouseY, 500, 50, 260, 50)) {
        estado="cronopio";
      }
      if (botones.botonPressed(mouseX, mouseY, 100, 50, 260, 50)) {
        estado="creditos";
      }
    } else if (estado.equals("cronopio")) {
      if (botones.botonPressed(mouseX, mouseY, 500, 50, 150, 50)) {
        estado="jugando";
      }
      {
        if (botones.botonPressed(mouseX, mouseY, 50, 50, 150, 50)) {
          estado="llave";
        }
      }
    } else if (estado.equals("come")) {
      if (botones.botonPressed(mouseX, mouseY, 310, 50, 150, 50)) {
        estado="fin";
      }
    } else if (estado.equals("fin")) {
      if (botones.botonPressed(mouseX, mouseY, 160, 250, 150, 50)) {
        estado="comienzo";
      }
    } else if (estado.equals("llave")) {
      if (botones.botonPressed(mouseX, mouseY, 310, 60, 150, 50)) {//mesa de luz 
        estado="mesadeluz";
      }
      {
        if (botones.botonPressed(mouseX, mouseY, 310, 160, 150, 50)) {//sillon
          estado="sillon";
        }
        {
          if (botones.botonPressed(mouseX, mouseY, 450, 276, 150, 50)) {//ventana
            estado="ventana";
          }
        }
      }
    } else if (estado.equals("mesadeluz")) {
      if (botones.botonPressed(mouseX, mouseY, 320, 276, 150, 50)) {
        estado="dormitorio";
      }
    } else if (estado.equals("dormitorio")) {
      if (botones.botonPressed(mouseX, mouseY, 310, 276, 150, 50)) {
        estado="casa1";
      }
    } else if (estado.equals("casa1")) {
      if (botones.botonPressed(mouseX, mouseY, 310, 276, 150, 50)) {
        estado="detiene";
      }
    } else if (estado.equals("detiene")) {
      if (botones.botonPressed(mouseX, mouseY, 310, 276, 150, 50)) {
        estado="necesita";
      }
    } else if (estado.equals("necesita")) {
      if (botones.botonPressed(mouseX, mouseY, 310, 276, 150, 50)) {
        estado="fin";
      }
    } else if (estado.equals("sillon")) {
      if (botones.botonPressed(mouseX, mouseY, 200, 50, 150, 50)) {
        estado="living";
      }
    } else if (estado.equals("living")) {
      if (botones.botonPressed(mouseX, mouseY, 200, 50, 150, 50)) {
        estado="casa1";
      }
    } else if (estado.equals("ventana")) {
      if (botones.botonPressed(mouseX, mouseY, 250, 50, 150, 50)) {
        estado="fin";
      }
    } else if (estado.equals("creditos")) {
      if (botones.botonPressed(mouseX, mouseY, 10, 50, 150, 50)) {
        estado="comienzo";
      }
    }
  }
  void teclaPresionada() {
    juego.teclaPresionada();
    if (juego.estadoJ==2&& estado=="jugando") {
      if (key=='c') {
        estado="come";
      }
    }
  }
}
