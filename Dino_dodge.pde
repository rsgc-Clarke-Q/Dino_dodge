//global variables (can be use everywhere bellow)
int x;

//this function runs once only
void setup(){
size(800,200);

//set the initial position of the cactus
x = 900; //position it off screen to the right
}
//this function runs repeatilly 
void draw(){
  //background clears each time the program loops
  background(255);
  
  fill(0);
  //draw a circle at the bottome right corner of the screen
  
  ellipse(x, 175, 50, 50);
  
  //create the appearence of moving by changing the x position
  x = x -8;
}