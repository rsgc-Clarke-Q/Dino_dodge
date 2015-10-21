class Cactus {

  //global variable of the cactus

  float x1;    // tracks horizontal position of first cactus
  float s1;    // speed for first cactus
  float a1;    // acceleration for first cactus
  float y1;    // tracks vertical position of first cactus

  //constructor (runs once)

  Cactus (float x_, float y_, float s_, float a_) {
    x1 = x_;
    y1 = y_;
    a1 = a_;
    s1 = s_;
  }
  //update things related to cactus
  void update (float gravity) {
    //cactus
    ellipse(x1, 175, 50, 50);
    //make cactus move
    // change the speed
    s1 = s1 + a1;

    // create the appearance of moving by changing the x position
    x1 = x1 + s1;

    // put the cactus back on the right edge if it goes off the left edge
    if (x1 < -25) {
      x1 = 900; // place off screen on right 
      s1 = -0.01;  // reset the speed (to avoid insanely fast movement)
      
    }
  }
} //end of class