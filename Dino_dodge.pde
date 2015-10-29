// global variables (can be used everywhere below)

Cactus c1; //makes a place in memory to keep the cactus object
Dino d1;  //makes a place in memory to keep the dino object

float gravity;   // gravity
float distance;  // tracks distance between dino and a cactus

// this function runs once only
void setup() {

  fill(0);

  // draw the canvas
  size(800, 200);

  //creates and initialises the dino object in the game
  d1 = new Dino (0, 170, 0);

  //make and set position for the new cactus
  c1 = new Cactus (900, 175, -0.1, -0.1);



  // set gravity
  gravity = 0.005;
}

// this function runs repeatedly
void draw() {
  // background clears each time the program loops

  background(255);




  //dino update
  d1.update(gravity);

  //cactus update
  c1.update(gravity);

  ////determine weither the distance between objects
  //float a = dinoY - 175;
  //float b = 50 - c1.getx()  ;
  //distance = sqrt( pow(a, 2) + pow(b, 2) );


  ////determine weither there is a  hit
  ////               sum of radii
  //if ( distance < (30 + 25) )
  //{
  // textSize(40);
  // text("Mad cause bad", 50, 100);
  //}
}


// respond to keypress 
void keyPressed() { 
  //makes the dino jump
  if (d1.getY() == 170) {
    println("about to jump");
    d1.setA(-1);
  }
}