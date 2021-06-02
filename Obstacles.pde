class Obstacles {
  float x, y;
  float spacing;
  float top;
  float bottom;
  float vel;
  boolean init = true;
  boolean end = false;
  
  Obstacles(int i) {
    end = false;
    spacing = 60;
    top = random(height/6, 3/4*height);
    bottom = top + spacing;
    x = width*i;
    vel = -3;
  }
    
  void update(){
    x += vel;
  }
  
  void render() {
    //pushMatrix();
    fill(210);
    rect(x, 0, spacing, top);
    rect(x, height - bottom, spacing, bottom);
    //popMatrix();
  }
   
  //Its not working yet...
  void reset() {
    finished = false;
    top = random(height/2);
    bottom = random(height/2);
    spacing = -60;
    for (int i = 0; i < 100; i++) {
      x = width* i;
    }
    y = height - bottom;
    vel = -3;
  }
  
}
