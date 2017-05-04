
//fondo
static final int NUM_LINES2=5;
float t;
PImage img;
PImage fondo;
//Declaracion de objetos
Mounstro Personaje1;
Mounstro Personaje2;
//
int IDpersonaje = 0;
int IDpersonaje1 = -1;
int IDpersonaje2 = -2;
int cx = 0;
int cy = 0;
int PJ1x = 10;
int PJ1y = 250;
int PJ2x = 800;
int PJ2y = 0;
int xataque=0;
int yataque = 50;
int xvida = 590;
int yvida = 10;
int pantalla = 0;
int numero = -770;
int numero1 = -100;
int numero2 = 30;
int numero3 = -130;
int turno = 1;


String Elemento[] = {"fuego","agua","aire","tierra"};
ArrayList<Particula> Particulas;
Particula Foo;

//Nombre, vida, ataque, defensa, elemento, dibujo
void setup()
{
  Personaje1 = new Mounstro("conejo1", 100, 10, 15, 3, 0);
  Personaje2 = new Mounstro("robot", 100, 17, 20, 0, 1);
  img = loadImage("489278.jpg");
  fondo = loadImage("escenario.jpg");
  size(1100,500);
  background(185);
  Foo = new Particula(50,50,255,0,0,5,0,250,250);
  Particulas = new ArrayList<Particula>();
  for(int i=0; i<200; i++)
  {
    Particulas.add(new Particula());
  }
  for (Particula p:Particulas)
  {
    p.mostrar();
    p.movimiento();
  }
}

void draw()
{
  if(pantalla==0)
    {
      if(key==0)
      {
        dibujainicio();
        textSize(90); 
        fill(255);
        text("PUFF GAME", 250, 200);
        textSize(40); 
        fill(255);
        text("Presione Cualquier Boton", 300, 300);
      }
      else
      {
        key=0;
        pantalla=1;
      }
    }
    if(pantalla==1)
    {
      image(img, 0, 0);
      fill(random(255),random(255),random(255));
      rect(cx,cy,200,200);
      
      textSize(20); 
      fill(255);
      text("Seleccione Personaje Dezlizandote Con A y D \nSeleccionando con ENTER\nAtaques con letras Z,X,C", 300, 300);
      Personaje1.Dibujar(0,0,0,0);
      Personaje1.Dibujar(1, 200,0,0);
      Personaje1.Dibujar(2, 200, -30,0);
      Personaje1.Dibujar(3, 200, 20, 0);
      Personaje1.Dibujar(4, 150, -30, 0);
      if(IDpersonaje1==-1)
      {
        text("Jugador 1", -300, 450);
      }
      if(IDpersonaje2==-2)
      {
        text("Jugador 2", -400, 450);
      }
    }
    if(pantalla==2)
    {
      image(fondo, 0, 0);
      fill(110,250,165);
      Personaje1.Dibujarvida();
      Personaje2.Dibujarvida();
      Personaje1.Dibujar(IDpersonaje1,PJ1x,PJ1y,1); //personaje,posicion en x, posicion en y, jugador
      Personaje2.Dibujar(IDpersonaje2,PJ2x,PJ2y,2);
      if(Personaje1.vida>0 && Personaje2.vida>0)
      {
        if(key=='z')
        {
          if(turno==1) Personaje1.ataque1();
          if(turno==2) Personaje2.ataque1();
                      
        }
        if(key=='x')
        {
          if(turno==1) Personaje1.ataque2();
          if(turno==2) Personaje2.ataque2();
                       
        }
        if(key=='c')
        {
          if(turno==1) Personaje1.ataque3();
          if(turno==2) Personaje2.ataque3();
                      
        }
      }
      if(Personaje1.vida<=0)
      {
        textSize(32); 
        fill(0, 102, 153);
        text("Game Over \nWin Player 2 \nPara volver a jugar presione R", -250, -100);
      }
      if(Personaje2.vida<=0)
      {
        textSize(32); 
        fill(0, 102, 153);
        text("Game Over \nWin Player 1 \nPara volver a jugar presione R", -250, -100);
       
      }
    }
}



//Menu de personajes
void keyPressed()
{
  if(pantalla==1)
  {
    if(IDpersonaje >=0 && IDpersonaje<=4) // && es "y" se deben cumplir las dos opciones mientras || significa "o" que solo alguna de las opciones debe de cumplirse
    {
      if(key=='d')
      {
        if(IDpersonaje==4) return;
        cx=cx+200;
        IDpersonaje = IDpersonaje+1;
        key=0;
      }
      if(key=='a')
      {
        if(IDpersonaje==0) return;
        cx=cx-200;
        IDpersonaje = IDpersonaje-1;
        key=0;
      }
      if(IDpersonaje1==-1)
      {
        if(key=='\n')
        {
          IDpersonaje1 = IDpersonaje;
          IDpersonaje2 = -2;
          IDpersonaje = 0;
          cx = 0;
          cy = 0;
          key = 0;          
        }
      }
      if(IDpersonaje2==-2)
      {       
        if(key=='\n')
        {
          IDpersonaje2 = IDpersonaje;
          IDpersonaje = 0;
          cx = 0;
          cy = 0;
          key = 0;  
          pantalla = 2;
        }
      }

    }
  }
  if(pantalla==2)
  {
    if(Personaje1.vida<=0 || Personaje2.vida<=0)
    {
      
          if(key=='r')
           { pantalla=0;
            
           }     
         }
       }
     }