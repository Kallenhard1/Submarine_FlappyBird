class Submarine {
  float x, y;
  float r;
  float vel;
  float g;
  float force;
  boolean hit;

  Submarine() {
    x = width/2;
    y = height/2;
    r = 10;
  
    vel = 0;
    
    g = 0.5;
    force = -6;
    hit = false;
  }
  
  // Up hir, means the y direction of the Processing coordinate Y.
  void Up() {
    vel = force;
  }
  // Embora o código esteja funcionando, seu efeito ainda está muito "seco", como se ganhasse velocidade instantanea ao pressionar o mouse.
  void move() {
    vel += g;
    y += vel;
  }
  
  
  void hits(Obstacles [] obst) {
    for (int i = 0; i < 100; i++){
      if( (x > obst[i].x && x < obst[i].x + obst[i].space) && (y < obst[i].top || y > height - obst[i].bottom)) {
        hit = true;
      }
    }
  }
  
    boolean finished(){
      if(hit == true){
        return true;
      } else {
        return false;
      }
  }
  
  void render() {
    fill(50, 50, 200);
    noStroke();
    ellipse(x, y, r*5, r*2);
  }
  
}
