int pantalla, segundos;
PImage diapo1, diapo2, diapo3, diapo4, diapo5;
PFont fuente;
String portada,text1, text2, text3, text4;
float posX, posY, tamX, tamY, velX, x, px, pxx;
boolean activo, reinicio;

void setup() {
 size(640, 480);
 posX = 0;
 
 velX = 4;
 
 x = -100;
 px = -100;
 pxx = -100;
 
 fuente = loadFont ("Century.vlw");

 diapo1 = loadImage ("Portada.jpg");
 diapo2 = loadImage ("Imagen1.jpg");
 diapo3 = loadImage ("Imagen2.jpg");
 diapo4 = loadImage ("Imagen3.jpg"); 
 diapo5 = loadImage ("Imagen4.jpg");
 
 portada = "Presione click para comenzar";
 text1 = "Hollow Knight es un videojuego perteneciente al género metroidvania desarrollado y publicado por Team Cherry en el año 2017";
 text2 = "El modo de juego de Hollow Knight se enfoca principalmente en exploración, plataformas y combate. Gran parte de la historia de Hollow Knight no se le cuenta al jugador directamente y, en cambio, \nse insinúa en los entornos, las interacciones de los personajes y los secretos que debe descubrir jugando";
 text3 = "El protagonista llega a la ciudad de Dirtmouth, una pequeña ciudad situada sobre las ruinas de Hallownest. A medida que avanza se encuentra con los restos reanimados de los antiguos residentes, \nsiendo transformados lentamente por una misteriosa fuerza";
 text4 = "Dependiendo de las acciones del jugador, el juego tiene tres finales que exploran temas de sacrificio, redención y la lucha contra la corrupción. \nPara mover el caballero presionar G y H";
 
 activo = false;
}

void draw() {
  
  textAlign(LEFT);
  reinicio = (mouseX > 200 && mouseX < 200+200 && mouseY > 100 && mouseY < 150);
  
  println(pantalla);
  background (0);
    if (pantalla == 1){
    text("pantalla 1",10,10);
  image(diapo1, 0, 0, 640, 480);
  fill(255);
  textFont(fuente);
  textSize(20);
  text(portada, 30, 180, width - 100, height - 100);
  
    } else if(pantalla == 2){
    
    image(diapo2, 0, 0, 640, 480);
    fill(255);
    textFont(fuente);
    textSize(20);
    text(text1, x, 390, width - 100, height - 100);
     if(x < 30){
      x ++;
}
    
    
    } else if (pantalla ==3){
   
    image(diapo3, 0, 0, 640, 480);
    fill(255);
    textFont(fuente);
    textSize(20);
    text(text2, px, 320, width - 100, height - 100);
     if(px < 30){
      px ++;
}
    
    } else if (pantalla ==4){
    
    image(diapo4, 0, 0, 640, 480);
    fill(255);
    textFont(fuente);
    textSize(20);
    text(text3, pxx, 320, width - 100, height - 100);
      if(pxx < 30){
      pxx ++;
}
    
    
    } else if (pantalla ==5){
    
    textAlign(CENTER);
    fill(255);
    rect(200, 100, 200, 50);
    
    fill(0); 
    textSize(35);
    text("Reiniciar", 30, 115, width - 100, height - 100);
   
    fill(255);
    textFont(fuente);
    textSize(20);
    text(text4, 30, 180, width - 100, height - 100);
    image(diapo5, posX, height-209, 150, 200);
    }
    
    if (keyPressed) {
      if (key == 'h')
    posX = posX += velX; 
      else if (key == 'g')
      posX = posX -= velX;   
    }
    
    
    if (segundos < 1){
    pantalla = 1;} 
    else if (segundos >= 1 && segundos < 8){
    pantalla = 2;} 
    else if (segundos >= 8 && segundos < 15){
    pantalla =3;}
    else if (segundos >= 15 && segundos < 22){
    pantalla =4;}
    else if (segundos >= 22 && segundos < 29){
    pantalla =5;}
      
    if (activo == true){
    if (frameCount % 60 == 0){
     segundos ++;
    }
    }
}  
       
     void mouseClicked() {
     activo = true;
     x = -100;
     px = -100;
     pxx = -100;
      if (reinicio){
        pantalla = 1;
        activo = false;
        segundos = 0;
      }
    }
     
  
