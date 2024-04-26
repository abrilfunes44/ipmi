PImage img;

void setup(){
size(1128, 705);
img = loadImage ("paisaje1.jpg");
}

void draw(){
  image(img, 0, 0);
 // println(mouseX, mouseY);
  
//pasto
  fill(109, 185, 102);
  rect(563, 473, 564, 232);
  noStroke();

/*/caminito
  stroke(100);
  noFill();
  bezier(564, 615, 900, 700,900, 390, 828, 472);
  /*/
  stroke(100);
  strokeWeight(3);
  noFill(); 
  beginShape();
  vertex(564,615);
  bezierVertex(696, 630, 914, 473 , 828,473);
  endShape();
  
 beginShape();
  vertex(696,705);
  bezierVertex(696, 630, 1000, 473 , 914, 473);
  endShape();

}
