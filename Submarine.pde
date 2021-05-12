class Submarine {
  float x, y;
  float vel;
  float g;
  float force;

  Submarine() {
    x = width/2;
    y = height/2;
  
    vel = 0;
    
    g = 0.9;
    force = -6;
  }
  
  
  // Up hir, means the y direction of the Processing coordinate Y.
  void Up() {
    vel = -force;
  }
  // Embora o código esteja funcionando, seu efeito ainda está muito "seco", como se ganhasse velocidade instantanea ao pressionar o mouse.
  void movement() {
    if (mousePressed){
      vel = force + (force * g);
      vel += -g;
    }
    vel += g;
    y += vel;
    
    if ( y > height || y < 0 ){
      vel = 0;
      y = height;
    }
  }
  
  void render() {
    fill(255);
    noStroke();
    ellipse(x, y, 50, 20);
  }
  

}
