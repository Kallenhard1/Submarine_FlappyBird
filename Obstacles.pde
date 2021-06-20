class Obstacle {
  float x;
  float bottom;
  float top;
  float w = 60;
  float vel;
  PImage obstacle;
  
  // Este constructor precisa de parametros para poder funcionar um for do void draw() principal. Parametros to tipo: float tempX, float tempY, float tempW...
  Obstacle(float initX, float initY) {
    x = initX;
    //random(height/6, 3/4*height)
    bottom = initX;
    top = initY;
    vel = 1.0;
    obstacle = loadImage("Obstaculo.png");
    
  }
  
    
  void render() {
    translate(x + w/2, bottom/height);
    pushStyle();
    //rectMode(CORNERS);
    fill(210, 100, 0);
    noStroke();
    image(obstacle, bottom, top+100);
    //rect(bottom, top + 100, bottom + w, height-1);
    rotate(PI);
    image(obstacle, bottom, top+100);
    //rect(bottom, 0, bottom + w, top - 100);
    popStyle();
    
    bottom -= vel;
    
  }
  

   
  //Its not working yet...
  void reset() {
    bottom = x;
    top = random(100, height - 100);
  }
  
  void reposition() {
    
  }
  
  boolean detectCollision(Submarine s) {
    boolean result = false;
    
    if ( rectsCollide(s.x, s.y, s.size, s.size, bottom, top, bottom + w, height-1) || 
         rectsCollide(s.x, s.y, s.size, s.size, bottom, 0, bottom + w, top-100)  ) {
      result = true;
    }
    
    return result;
  }
  
  boolean rectsCollide(float firstX, float firstY, float firstWidth, float firstHeight, 
                      float secondULX, float secondULY, float secondBRX, float secondBRY) {
    float hh = firstHeight/2;
    float hw = firstWidth/2;
    return isInside(firstX - hw, firstY - hh, secondULX, secondULY, secondBRX, secondBRY) ||
           isInside(firstX + hw, firstY - hh, secondULX, secondULY, secondBRX, secondBRY) ||
           isInside(firstX + hw, firstY + hh, secondULX, secondULY, secondBRX, secondBRY) ||
           isInside(firstX - hw, firstY + hh, secondULX, secondULY, secondBRX, secondBRY);
  }
  
  boolean isInside(float x, float y, float ulX, float ulY, float brX, float brY) {
    return (x >= ulX && x <= brX && y >= ulY && y <= brY);
  }
  
}
