class Submarine {
  float sx, sy;
  float r;
  float vel;
  float g;
  float force;
  boolean finished;

  Submarine() {
    finished = false;
    sx = width/2;
    sy = height/2;
    r = 10;
  
    vel = 0;
    
    g = 0.1;
    force = -6;
  }
  
  
  // Up hir, means the y direction of the Processing coordinate Y.
  void Up() {
    vel = -force;
  }
  // Embora o código esteja funcionando, seu efeito ainda está muito "seco", como se ganhasse velocidade instantanea ao pressionar o mouse.
  void move() {
    if (mousePressed){
      vel = force + (force * g);
      vel += -g;
    }
    vel += g;
    sy += vel;
   
  }
  
  void render() {
    fill(50, 50, 200);
    noStroke();
    ellipse(sx, sy, r*5, r*2);
  }
  
  void collision(Obstacles [] b) {
    if ( sy > height ){
      vel = -force;
      sy += -vel;
      //The reset is in hir just for now, because later i will put an end() function and show the Score for the Player.
      //reset();
    }
    for(int i = 0; i < 100; i++) {
      if ( (sx > b[i].bx + b[i].w && sx < b[i].bx + b[i].w) && (sy < b[i].top || sy > b[i].by)  ) {
        println("Collision...");
        finished = false;
        reset();
    }

  }
  
  }
  
  void reset() {
    finished = false;
    sx = width/2;
    sy = height/2;
  
    vel = 0;
    
    g = 0.9;
    force = -6;
  }

}
