// global variables (can be used everywhere below)

Cactus c1; //makes a place in memory to keep the cactus object

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

  //make and set position for the new cactus
  c1 = new Cactus (900, 175, -0.1, -0.1);

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

  background(255);






  //status update 
  textSize(12);
  text("dinoY is " + dinoY, 150, 25);
  text("dinoS is " + dinoS, 150, 50);
  text("dinoA is " + dinoS, 150, 75);
  text("distance is" + distance, 150, 100);

  c1.update(gravity);

  //determine weither the distance between objects
  //float a = dinoY - 175;
  //float b = 50 - x1;
  //distance = sqrt( pow(a, 2) + pow(b, 2) );


  ////determine weither there is a  hit
  ////               sum of radii
  //if ( distance < (30 + 25) )
  //{
  //  textSize(40);
  //  text("Mad cause bad", 50, 100);
  //}

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