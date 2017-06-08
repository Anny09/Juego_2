


float n=.618;
float m=.382;
float px;
float py;
int id;


objeto espiral;

void setup(){

background(0);  
size(700,700);
espiral = new objeto(px=random(200),py=random(200),0.618,0.382,n + (0.0002 * (n)) ,m + (0.0002 * (m)));
id=0;

} 


void draw(){
  
switch(id){
  case 0:
         espiral.dibujo1();
         break;
  case 1:
         espiral.dibujo2();
         break; 
  case 2:
         espiral.dibujo3();
         break; 
         
  case 3:
         espiral.dibujo4();
         break; 
  }
  
  
  
  }