void cuadrados() {
  for (int x=0; x<cant; x++) {
    for (int y=0; y<cant; y++) {
      if (esPar(x, y)) {
        fill (azul);
      } else {
        fill (negro);
      }
      rect (400+x*tam, y*tam, tam, tam);
    }
  }
}

void circulos() {
  for (int x = 0; x< cant; x++) {
    for (int y =0; y<cant; y++) {
      if (esPar(x, y)) {
        fill(negro);
      } else {
        fill(azul);
      }
      circle(400+x*tam+tam/2, y*tam+tam/2, tam);
    }
  }
}

boolean esPar(int a, int b) {
  return ((a+b)%2 == 0);
}

void esquinaDerecha(float posx, float posy) {
  float dis = dist(posx, posy, 600, 200);
  float c = map (dis, 0, 280, 0, 255);
  if (posx > 400) {
    azul = color(c, 41, 183);
    negro = color(c);
  }
}
