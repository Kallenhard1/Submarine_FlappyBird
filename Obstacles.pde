class Obstacles {
  float bx, by;
  float spacing;
  float top;
  float bottom;
  float vel;
  boolean finished;
  
  Obstacles(int i) {
    finished = false;
    spacing = -60;
    top = random(height/2);
    bottom = top + spacing;
    bx = width * i;
    by = height - bottom;
    vel = -3;
  }
  
  void collision(Submarine sub) {
    //I don't know, how to create a local variable for the Submarine class. (?)
    float yHalf = height/2;
    float xHalf = width/2;
    Submarine halfHeightSub = sub.yHalf;
    //if() {}
  }
  
  void update(){
    bx += vel;
  }
  
  void render() {
    fill(210);
    rect(bx, 0, spacing, top);
    rect(bx, by, spacing, bottom);
  }
  
  void checkPosition(Submarine s) {
    if ( s.finished == true ) {
      finished = true;
      reset();
    }
  } 
  
  //Its not working yet...
  void reset() {
    finished = false;
    top = random(height/2);
    bottom = random(height/2);
    spacing = -60;
    for (int i = 0; i < 100; i++) {
      bx = width + (width * i);
    }
    by = height - bottom;
    vel = -3;
  }
  
}
