PImage paisaje1;

void setup(){
size(800, 400);
paisaje1 = loadImage ("paisaje1.jpg");
background(80,131,255);

//pasto
beginShape();
fill(141, 182, 0);
noStroke();
rect(0, 250, 400, 150);
endShape();

//caminito
beginShape();
fill(130);
vertex(0, 352);
bezierVertex(215,287,225,267,198,250);
vertex(259, 250);
bezierVertex(300, 296, 285, 310, 118, 398);
vertex(0, 400);
endShape();

//montaña
fill(68, 85, 111);
triangle(400, 164, 400, 250, 50, 250);
triangle(137, 70, 250, 250, 0, 250);
fill(255);
triangle(137, 68, 155, 97, 116, 97);
//nubes
fill(255);
circle(120, 162, 50);
circle(150, 162, 50);
circle(180, 162, 50);
circle(210, 162, 50);
circle(240, 162, 50);
circle(280, 162, 50);
circle(310, 162, 50);
circle(340, 162, 50);
circle(380, 162, 50);


//arbol
fill(128, 64, 0);
rect(50, 100, 20, 180);
fill(40, 114, 51);
triangle(59, 22, 132, 225, -10, 225);


}
void draw (){
  println(mouseX, mouseY);
  image (paisaje1, 400, 0, 400, 400);
}
