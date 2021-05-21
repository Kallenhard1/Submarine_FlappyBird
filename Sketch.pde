int n = 100;
Submarine sub;
Rules rules;
Obstacles [] obst = new Obstacles[n];
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
  sub.move();
  sub.render();
  sub.collision(obst);
 
  for(int i = 0; i < obst.length; i++) {
    obst[i].update();
    obst[i].checkPosition(sub);
    obst[i].render();
  }
  
}
