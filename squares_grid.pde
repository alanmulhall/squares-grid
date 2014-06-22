/*
 * Creative Coding - Monash Uni course
 * Week 2, 03 - n squares
 * by Alan Mulhall
 */
  
int randomColor = (int) random(5);

void setup() {
  size(600, 600);
  rectMode(CORNER);
  noStroke();
  frameRate(1);  // set the frame rate to 1 draw() call per second
}


void draw() {
  background(180); // clear the screen to grey  
  int num = 5; 
  int gap = 3; 
  int randomColor;
  
  // calculate the size of each square for the given number of squares and gap between them
  float cellsize = ( width - (num + 1) * gap ) / (float)num; 

    for (int i=0; i<num; i++) {
      for (int j=0; j<num; j++) {  
        randomColor = (int) random(5);
        if (randomColor == i) {
          fill(random(176), 28, 29, 180);
        } else {
          fill(131, 65, 58, 180);
        }      
        rect((gap * (i+1) + cellsize * i) + random(15), (gap * (j+1) + cellsize * j) + random(15), cellsize, cellsize);
      }
    }
    
    if (keyPressed == true && key == 's'){
      saveFrame("squares_grid_#####.jpg");
      println("frame is saved");
    }
    
} //end of draw 

  


