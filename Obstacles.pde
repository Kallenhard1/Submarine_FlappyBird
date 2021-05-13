class Obstacles {
  float x, y;
  float w;
  float top;
  float bottom;
  float vel;
  
  Obstacles(int i) {
    top = random(height/2);
    bottom = random(height/2);
    w = -60;
    x = width * i; //I don't know why it worked...( ? )
    y = height - bottom;
    vel = -3;
  }
  
  void render() {
    pushMatrix();
    fill(210);
    rect(x, 0, w, top);
    rect(x, y, w, bottom);
    popMatrix();
  }
  
  void update(){
    x += vel;
  }
  
}
