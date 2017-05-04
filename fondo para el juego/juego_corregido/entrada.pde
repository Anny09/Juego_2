void dibujainicio()
{
  

    Foo.mostrar();
    Foo.movimiento();
    for (Particula p:Particulas){
    p.mostrar();
    p.movimiento();
  }
  
}

class Particula{
  int ancho;
  int altura;
  int R, G, B;
  int velocidad;
  float direccion;
  float px, py;
  
  Particula(int ancho_, int altura_, int R_, int G_, int B_, int velocidad_, float direccion_, float px_, float py_){
    ancho = ancho_;
    altura = altura_;
    R = R_;
    G = G_;
    B = B_;
    velocidad = velocidad_;
    direccion = direccion_;
    px = px_;
    py = py_;
  }
  
  Particula(){
    ancho = int(random(50));
    altura = ancho;
    R = int(random(255));
    G = int(random(255));
    B = int(random(255));
    velocidad = int(random(20));
    direccion = int(random(10));
    px = int(random(10));
    py = int(random(80));
  }
  
  
  void mostrar(){
  noStroke();
  ellipseMode(CENTER);
  fill(R,G,B);
  ellipse(px, py, ancho, altura);
  }
 
  void movimiento(){
   px += cos(direccion)*velocidad;
   py += sin(direccion)*velocidad;

  if (px >= 1075){
    direccion = random(HALF_PI, HALF_PI+PI);
  }
  
  if (px <= 25){
    direccion = random(-HALF_PI, HALF_PI);
  }
  
  if (py >= 775){
    direccion = random(PI, TWO_PI);
  }
  
  if (py <= 25){
   direccion = random(0, PI);
  }
  
  }
 } 
  