
class objeto{
       
 
  
  float px,py;//posición del objeto
  float n;
  float m;
  float n1;
  float m1;
     
     objeto( float px_, float py_, float n_,float m_,float n1_,float m1_){
  
        n = n_;
        m = m_;
        px= px_;
        py= py_;
        n1 = n1_;
        m1 = m1_;
  }
  
  objeto(){
          
    px=width/2 + cos(n)* m; 
    py=height/2 + sin(n) * m;
    n = int(0.618);
    m= int(0.382) ;
    n1=n +.005;
    m1=m +.01;
     } 
    
    
    
    void dibujo1(){

      stroke(0,0,255);
     if(n<3000){
      n=n+0.700*cos(m);
      m=m+0.3*tan(m);
      point(px=width/2 + cos(n)* m, py=height/2 + sin(n) * m);
      stroke(255,255,255);
      point(px=height/2 + sin(n) * m, py=width/2 + cos(n)* m);
     
   
     
     
      stroke(0,255,0);
      point(px=height/8 + sin(n) * m, py=width/2 + cos(n)* m);
      stroke(255,0,255);
      point(px=width/5.2 + cos(n)* m, py=height/1.2 + sin(n) * m);
     
      stroke(255,0,0);
      point(px=height/1.2 + sin(n) * m, py=width/2 + cos(n)* m);
      stroke(255,255,0);
      point(px=width/1.2 + cos(n)* m, py=height/1.2 + sin(n) * m);
      
      
      stroke(255,0,125);
      point(px=height/1.2 + sin(n) * m, py=width/5 + cos(n)* m);
      stroke(50,250,200);
      point(px=width/5.2 + cos(n)* m, py=height/5.2 + sin(n) * m);
      
    }
    else{
      id=0;
      n=0;
    }
     
   }
    
    
    void dibujo2(){
    
     stroke(0,0,255);
     if(n<500){
      n=n+0.618/10;
      m=m+0.382/10;
      point(px=width/2 + cos(n)* m, py=height/2 + sin(n) * m);
      stroke(255,255,255);
      point(px=height/2 + sin(n) * m, py=width/2 + cos(n)* m);
     
   
     
     
      stroke(0,255,0);
      point(px=height/8 + sin(n) * m, py=width/2 + cos(n)* m);
      stroke(255,0,255);
      point(px=width/5.2 + cos(n)* m, py=height/1.2 + sin(n) * m);
     
      stroke(255,0,0);
      point(px=height/1.2 + sin(n) * m, py=width/2 + cos(n)* m);
      stroke(255,255,0);
      point(px=width/1.2 + cos(n)* m, py=height/1.2 + sin(n) * m);
      
      
      stroke(255,0,125);
      point(px=height/1.2 + sin(n) * m, py=width/5 + cos(n)* m);
      stroke(50,250,200);
      point(px=width/5.2 + cos(n)* m, py=height/5.2 + sin(n) * m);
      
    }    
    else{
      id=1;
      n=0;
    }
     
    }
    
    void dibujo3(){
     
     if(n<5000){
      stroke(255,255,255);
      n=n+0.618%2;
      m=m+.0382;
      n1=n +.005;
      m1=m +.01;
      point(px=width/2 + cos(n)* m, py=height/2 + sin(n) * m);
      point(px=height/2 + sin(n) * m, py=width/2 + cos(n)* m);
     if(n<=500){
       stroke(200,0,255);
       point(px=width/2 + cos(n)* m, py=height/2 + sin(n) * m);
       point(px=height/2 + sin(n) * m, py=width/2 + cos(n)* m);
     }
     if(n>=1000){
       stroke(80,255,150);
       point(px=width/2 + cos(n)* m, py=height/2 + sin(n) * m);
       point(px=height/2 + sin(n) * m, py=width/2 + cos(n)* m);
     }
      
      if(n>=3000){
       stroke(255,0,125);
       point(px=width/2 + cos(n)* m, py=height/2 + sin(n) * m);
       point(px=height/2 + sin(n) * m, py=width/2 + cos(n)* m);
     }
     
     
     if(m>250 & m<n){
       stroke(0,0,255);
       point(px=width/2 + cos(n)* m, py=height/2 + sin(n) * m);
       point(px=height/2 + sin(n) * m, py=width/2 + cos(n)* m);
      }
      
      else{
      id=2;
      n=0;
    }
     
    }    
  }
    
    void dibujo4(){
      stroke(0,0,255);
     if(n<3000){
      n=n+0.0135*cos(n)+tan(n);
      m=m+ 0.003*(m)/cos(120)% (0.3);
      n1=n +0.05*(m);
      m1=m +.01*(n);
      point(px=width/2 + cos(n)* m, py=height/2 + sin(n) * m);
      stroke(255,255,255);
      point(px=height/2 + sin(n) * m, py=width/2 + cos(n)* m);
     
   
     
     
      stroke(0,255,0);
      point(px=height/8 + sin(n) * m, py=width/2 + cos(n)* m);
      stroke(255,0,255);
      point(px=width/5.2 + cos(n)* m, py=height/1.2 + sin(n) * m);
     
      stroke(255,0,0);
      point(px=height/1.2 + sin(n) * m, py=width/2 + cos(n)* m);
      stroke(255,255,0);
      point(px=width/1.2 + cos(n)* m, py=height/1.2 + sin(n) * m);
      stroke(20,125,0);
      point(px=width/2 + cos(n)* m, py=height/1.2 + sin(n) * m);
      
      stroke(255,0,125);
      point(px=height/1.2 + sin(n) * m, py=width/5 + cos(n)* m);
      stroke(50,250,200);
      point(px=width/5.2 + cos(n)* m, py=height/5.2 + sin(n) * m);
      stroke(50,255,150);
      point(px=width/2+ cos(n)* m, py=height/5.2 + sin(n) * m);
      
    }    
      else{
      id=3;
      n=0;
    }
     
     
   }   
}