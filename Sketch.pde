int n = 100;
Submarine sub;
Obstacles [] obs;
ArrayList<Obstacles> obst;
boolean init = true;
boolean isOver = false;

void setup(){
  size(512, 512);
  obs = new Obstacles[n];
  obst = new ArrayList<Obstacles>();
  for(int i = 0; i < obs.length; i++) {
    obs[i] = new Obstacles(width, 60, random(height/6, 3/4*height), random(height/2), -3.0);
  }
  sub = new Submarine();

  //obst.add(new Obstacles(width, 60, random(height/6, 3/4*height), random(height/2), -3.0));
  

}
void draw() {
  background(0);
  
  mouseIsPressed();
  
  sub.move();
  sub.render();
 
  for(int i = 0; i < obs.length; i++) {
    obs[i].update();
    //obst[i].checkPosition(sub);
    obs[i].render();
    if(sub.finished()){
      println("HITS...");
    }
  }
}

void mouseIsPressed(){
    if (mousePressed){
      sub.Up();
    }
}
