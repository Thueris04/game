class img {


PImage icon;

float posX[];
float posY[];
int estado[]; 
float botonX,botonY;

int boton = 0;

 img()
      {
 }
            
 void move(){
   
  posX = new float[100];
  posY = new float[100];
  
  estado = new int[100];
   
 icon = loadImage ("icon.png");

   
     
 for (int i=0; i<100;i++){
   posY[i] = posY[i]+ random(1,6);
}




 for(int i=0; i<100; i++){
  posX[i]= random(500);
  posY[i]= random(100);
  
  estado[i] = 1;
  
  }
  
     
  for (int i=0; i<1;i++){
    
    image (icon,posX[i],posY[i],100,50);
    botonX = posX[i];
    botonY = posY[i];
  
 
 


  }
  
  
  if(oprimirBtn(botonX,botonY,100,50)==true){ 
    boton = 1;
  }
  
 

   if (boton == 1){
     
       textAlign(CENTER);
       text("YOU LOSE ",400,300);
     
     

   }
   
 
   
 
}
  
}






boolean oprimirBtn(float x, float y,float ancho,float alto){
  if(mouseX >= x && mouseX <= x+ancho && mouseY >= y && mouseY <= y+alto){
    return true;
  }else{
    return false;
  }
}
