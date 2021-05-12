Submarine sub;
Rules rules;
Obstacles [] obst = new Obstacles[512];
boolean finished;

void setup(){
  size(512, 512);
  sub = new Submarine();
  //A sintaxe está errada, mas não sei sé é um erro na linha abaixo, ou na variavel global.
  //Não consigo fazer mais de um elemento dessa classe. Por que?
  for(int i = 0; i < obst.length; i++) {
    obst[i] = new Obstacles();
  }
  
  rules = new Rules();
}
void draw() {
  background(0);
  
  sub.Up();
  sub.movement();
  sub.render();
  
  for(int i = 0; i < obst.length; i++) {
    obst[i].render();
  } 
  
  
}

//void restart() {
//  if(obst.hits(sub)){
//    finished = true;
//  }
//}
