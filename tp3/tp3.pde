//Abril Funes
//118947/3
//video: 


PImage ref;
int cant, tam;
color azul, negro;

void setup() {
  size(800, 400);
  ref = loadImage("ref.jpg");
  cant = 6;
  tam = width/cant;
  negro = color(0);
  azul = color(37, 41, 183);
}

void draw() {
  image(ref, 0, 0, 400, 400);
  cuadrados();
  circulos();
  esquinaDerecha(mouseX, mouseY);
}

void keyPressed() {
  negro = color(0);
  azul = color(37, 41, 183);
}
