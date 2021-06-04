class Obstacles {
  float x, y;
  float space;
  float top;
  float bottom;
  float vel;
  boolean end = false;
  
  // Este constructor precisa de parametros para poder funcionar um for do void draw() principal. Parametros to tipo: float tempX, float tempY, float tempW...
  Obstacles(float tempX, float tempSpace, float tempTop, float tempBottom, float tempVel) {
    end = false;
    space = tempSpace;
    //random(height/6, 3/4*height)
    top = tempTop;
    //top + spacing
    tempBottom = top - space;
    bottom = tempBottom;
    x = tempX;
    vel = tempVel;
  }
    
  void update(){
    x += vel;
  }
  
  void render() {
    //pushMatrix();
    fill(210);
    rect(x, 0, space, top);
    rect(x, height - bottom, space, bottom);
    //popMatrix();
  }
   
  //Its not working yet...
  void reset() {
    
  }
  
}
