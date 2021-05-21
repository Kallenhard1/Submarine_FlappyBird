class Obstacles {
  float bx, by;
  float w;
  float top;
  float bottom;
  float vel;
  boolean finished;
  
  Obstacles(int i) {
    finished = false;
    top = random(height/2);
    bottom = random(height/2);
    w = -60;
    bx = width * i;
    by = height - bottom;
    vel = -3;
  }
  
  void update(){
    bx += vel;
  }
  
  void render() {
    fill(210);
    rect(bx, 0, w, top);
    rect(bx, by, w, bottom);
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
    w = -60;
    for (int i = 0; i < 100; i++) {
      bx = width + (width * i);
    }
    by = height - bottom;
    vel = -3;
  }
  
}
