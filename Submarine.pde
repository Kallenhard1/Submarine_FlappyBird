class Submarine {
  float x;
  float y;
  float size = 330;
  float vel;
  float g;
  float force;
  PImage submarine;

  Submarine() {
    x = width/2;
    y = height/2;
    submarine = loadImage("Submarine.png");
    
    vel = 0;
    
    g = 0.5;
    force = -6.0;
   
  }
  
  // Está funcionando, mas está dando tilts no render. Talvez esteja demorando para receber o -force
    void Up() {
    vel = force;
   
  }
 
  void render() {
    
    pushStyle();
    
    imageMode(CENTER);
    image(submarine, x, y, size, size);
    
    popStyle();
    
    vel += g;
    y += vel;
    
  }
  
  
  void reset() {
    y = 0;
    vel = 0;
  }
  

  
  void boarders() {
    if(y >= height-1) {
      vel -= force;
      y = height-40;
      //vel = 0;
    }
    if (y <= 0) {
      vel = 0;
      y = 0;
    }
  }
  

  
}
