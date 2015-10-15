// global variables (can be used everywhere below)
float x1;    // tracks horizontal position of first cactus
float s1;    // speed for first cactus
float a1;    // acceleration for first cactus
float dinoY;     // tracks position of dino
float dinoS;     // tracks speed of dino
float dinoA;     // tracks acceleration of the dino
float gravity;   // gravity
float distance;  // tracks distance between dino and a cactus

// this function runs once only
void setup() {

  fill(0);

  // draw the canvas
  size(800, 200);

  // set the initial position of the cactus
  x1 = 900; // position it off-screen on the right

  // set the intial acceleration
  a1 = -0.1;

  // set the initial speed
  s1 = -1;

  // set dino initial vertical position
  dinoY = 170;

  // set dino's initial speed
  dinoS = 0;

  // set dino's initial acceleration
  dinoA = 0;

  // set gravity
  gravity = 0.005;
}

// this function runs repeatedly
void draw() {
  // background clears each time the program loops
  frameRate(60);
  background(255);

  // draw a circle at bottom right corner of the screen
  //       x    y    w   h
  ellipse(x1, 175, 50, 50);

  // change the speed
  s1 = s1 + a1;

  // create the appearance of moving by changing the x position
  x1 = x1 + s1;

  // put the cactus back on the right edge if it goes off the left edge
  if (x1 < -25) {
    x1 = 900; // place off screen on right 
    s1 = -1;  // reset the speed (to avoid insanely fast movement)
  }

  //status update 
  textSize(12);
  text("dinoY is " + dinoY, 150, 25);
  text("dinoS is " + dinoS, 150, 50);
  text("dinoA is " + dinoS, 150, 75);
  text("distance is" + distance, 150, 100);

  //determine weither the distance between objects
  float a = dinoY - 175;
  float b = 50 - x1;
  distance = sqrt( pow(a, 2) + pow(b, 2) );


  //determine weither there is a  hit
  //               sum of radii
  if ( distance < (30 + 25) )
  {
    textSize(40);
    text("Never done that in the history of dota", 50, 100);
  }

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




  // draw the dino
  ellipse(50, dinoY, 60, 60);
}


// respond to keypress 
void keyPressed() { 

  if (dinoY >= 170) {
    dinoS = -9;
  }
}