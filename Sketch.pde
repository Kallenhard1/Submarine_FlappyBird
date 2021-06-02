int n = 100;
Submarine sub;
Rules rules;
Obstacles [] obst = new Obstacles[n];
boolean init = true;
boolean isOver = false;

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
  
  mouseIsPressed();
  
  sub.move();
  sub.render();
 
  for(int i = obst.length - 1; i >= 0; i--) {
    obst[i].update();
    //obst[i].checkPosition(sub);
    obst[i].render();
    if(sub.hits(obst[i])){
      println("HITS...");
    }
  }
}

void mouseIsPressed(){
    if (mousePressed){
      sub.Up();
    }
}
