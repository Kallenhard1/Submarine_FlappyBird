Submarine sub;
Rules rules;
Obstacles [] obst = new Obstacles[3];
boolean finished;

void setup(){
  size(512, 512);
  sub = new Submarine();
  for(int i = 0; i < obst.length; i++) {
    obst[i] = new Obstacles(i);
  }

  rules = new Rules();
}
void draw() {
  background(0);
  
  sub.Up();
  sub.movement();
  sub.render();
  
 
  for(int i = 0; i < obst.length; i++) {
    obst[i].update();
    obst[i].render();
  }
  
}

//void restart() {
//  if(obst.hits(sub)){
//    finished = true;
//  }
//}
