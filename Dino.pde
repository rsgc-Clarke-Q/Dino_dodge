class Dino {

  //global variable of the dino

  float dinoY;     // tracks position of dino
  float dinoS;     // tracks speed of dino
  float dinoA;     // tracks acceleration of the dino
  float dinoX;
  float dinoR;
  //constructor (runs once)

  Dino (float dinoY_, float dinoS_, float dinoA_) {
    dinoY = dinoY_;
    dinoA = dinoA_;
    dinoS = dinoS_;
  }

  //update things related to dino
  void update (float gravity) {  
    // draw the dino
    ellipse(50, dinoY, 60, 60);



    //move the dino
    dinoA = dinoA + gravity; //change acceleration bassed on gravity
    dinoY = dinoY + dinoS; //change location bassed on speed
    dinoS = dinoS + dinoA; //changes speed based on acceleration

    //stop the dino if it hits the ground
    if (dinoY > 170) { // bottom of the screen (200) minus the radius of (30)
      dinoA = 0;
      dinoS = 0;
      dinoY = 170;
    }

    if (dinoY < 50) {
      dinoA = 1;
      dinoS = 0;
      dinoY = 50;
    }
    //status update 
    textSize(12);
    text("dinoY is " + dinoY, 150, 25);
    text("dinoS is " + dinoS, 150, 50);
    text("dinoA is " + dinoS, 150, 75);
    text("distance is" + distance, 150, 100);
  }
  //get Y
  //purpose on an accesor method find where the dino is vertically
  float getY() {
    return dinoY;
  }
  float getX(){
    return dinoX;
  }


  //setA
  // Purpose: a mutator method; lets the acceleration for the dinosaur be set
  //          from outside the class

  void setA(float newA_) {
    dinoA = newA_;
  }
  // isTouching
  //
  // Purpose: uses information about cactus position and determines if it is 
  //          touching the dino
  boolean isTouching(Cactus c) {

    // determine distance between the objects
    //        dino - cactus
    float a = dinoY - c.getY();
    float b = dinoX - c.getx();
    distance = sqrt(a*a + b*b);

    // decide whether dino is touching this cactus
    //            dino radius   cactus radius
    if ( distance < (   dinoR   +     c.getR() ) ) {
      return true;  // exit the method and say "yes" (is touching!) or "true"
    }
    
    // when dino is not touching, say "no" (not touching) or "false"
    return false;
  }
  
  
} //end of class