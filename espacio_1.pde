import processing.pdf.*;

PFont myfont;
void setup() {
  beginRecord(PDF,"espacio_estelar_0.pdf");
  frameRate(2);
  noFill();
  size(420,595);
  myfont= createFont("IBMPlexMono-Regular.ttf",14);
  size(420,595);
}
void draw(){
  println();
  background(255);
  fill(0);
  textFont(myfont);
  textAlign(CENTER);
  for(int i=0; i<3; i=i+1){
  fium(random(width),random(245,260));
  fium(random(width),random(540,560));
   }
   espacio2(random(20),height/40,40,40);
   espacio(2,30,50,40);
   espacio2(random(20),50,40,40);
   espacio(2,70,50,40);
   planeta(width/4,140);
   planeta(width/4*3,140);
   planeta(width/2,450);
   for(int i=0; i<1; i=i+1){
   espacio2(random(20),330,40,40);
   espacio(2,350,50,40);
   espacio2(random(20),370,40,40);
   espacio(2,390,50,40);
   }
   
 
  for(int i=0; i<1; i=i+1){
  punta(random(width/2),210);
  punta(random(width/4),260);
  punta(random(width/2),510);
  }
   
   
   for(int i=0; i<8; i++){
  estrella(random(width/2,width),random(0,height/2));
  }
  for(int i=0; i<10; i++){
  estrella(random(0,width/2),random(height/2,height/1));
  }
  
  
}
void fium(float px, float py){
  push();
  translate(px,py);
  fill(0);
  for(int i=0; i<1;i=i+1){
  text("fium",105,0);
  }
  pop();
}
void espacio(float px, float py, float espacio, float espacio2){
  push();
  translate(px,py);
  fill(0);
  for(int i=0; i<espacio2;i=i+1){
  text("◊",i*espacio,0);
  }
  pop();
  
}
void espacio2(float px, float py, float espacio, float espacio2){
  push();
  translate(px,py);
  fill(0);
  for(int i=0; i<espacio2;i=i+1){
  text("*",i*espacio,0);
  }
  pop();
  
}

void estrella(float px, float py){
  push();
  translate(px,py);
  textLeading(random(15,40));
  for(int i=0; i<2;i=i+1){

  }
  pop();
}

void planeta(float px, float py){
  push();
    translate(px,py);
    fill(0);
       for(int i=0; i<10;i=i+1){
    rotate(radians(-45));
    text("(",-25,0);
    }
  pop();
  push();
    translate(px,py);
    fill(0);
    text("§",0,5);
  pop();
}
void punta(float px, float py){
  push();
  translate(px,py);
  fill(0);
  for(int i=0; i<1;i=i+1){
  text("^",105,0);
  }
  pop();
  
   push();
  translate(px,py);
  fill(0);
  for(int i=0; i<1;i=i+1){
  text("{",100,6);
  }
  pop();
  
  push();
  translate(px,py);
  fill(0);
  for(int i=0; i<1;i=i+1){
  text("}",110,6);
  }
  pop();
  
   push();
  translate(px,py);
  fill(0);
  for(int i=0; i<1;i=i+1){
  text("↑",105,17);
  }
  pop();
  endRecord();
}


  
