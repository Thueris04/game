img[] img = new img[1];


PImage car, fondo, icon;
int x =300;
int y =700;
float posX[];
float posY[];
int estado[]; 
float distancia = 0;
int puntaje = 0;
int time =0;
int timer;









void setup(){
  
  
  
  size (600,828);
  fondo = loadImage ("fondo.jpg");
   icon = loadImage ("icon.png");
  car = loadImage ("fer.png");
  
  
 // posX = new float[100];
  //posY = new float[100];
  
  estado = new int[100];
  
  
  

    
  /*for(int i=0; i<100; i++){
  posX[i]= random(500);
  posY[i]= random(100);
  
  estado[i] = 1;
  
    }
*/


for (int i =0; i<img.length;i++){

  img[i] = new img();
}
  }

void draw (){
    background(fondo);
    noCursor();
    
    
    image (car,mouseX,mouseY);
   
    
    textSize(28);
      time = millis()/1000;
  text ("Time :" + time, 900,700);
  
  
/*for (int i=0; i<100;i++){
   posY[i] = posY[i]+ random(1,6);
}

*/
 
    
    
 /* for (int i=0; i<10;i++){
    
    image (icon,posX[i],posY[i],100,50);
    botonX = posX[i];
    botonY = posY[i];
    println(i);
   
  }
  */

  
  for(int i = 0; i <img.length;i++){

  
   if (millis() - timer >= 5000){
   
   timer= millis();
   }
   
          img[i].move();

  }
  
  
  
    
    fill (255);
  text("Score : "+puntaje ,100,70);
  puntaje =0;
   for (int i=0; i<100;i++){
   
   if(estado[i] == 0){
     puntaje = time;
   }
 }
 
 


  
  
}
