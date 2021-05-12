class Obstacles {
  float x, y;
  float w;
  float top;
  float bottom;
  float vel;
  
  Obstacles() {
    top = random(height/2);
    bottom = random(height/2);
    w = -60;
    x = width;
    y = height - bottom;
    vel = -3;
  }
  
  void render() {
    pushMatrix();
    move();
    fill(210);
    rect(x, 0, w, top);
    rect(x, y, w, bottom);
    popMatrix();
    
  }
  
  void move(){
    x += vel;
  }
  
}
