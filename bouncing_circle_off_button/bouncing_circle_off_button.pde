float ellipseX = 30;
float ellipseY = 30;
float ellipseDia = 20;

float ellipseXSpeed = 2;
float ellipseYSpeed = 3;

//display walls
float lineTop = 0;
float lineBottom = 400;
float lineLeft = 0;
float lineRight = 400;

//inner box
float leftBox = 150;
float rightBox = 240;
float topBox = 150;
float bottomBox = 240;

void setup(){
  size(400, 400);
}

void draw(){
  background(255);
  
  noStroke();
  fill(255, 192, 203);
  rect(150, 150, 90, 90 );
  
  fill(0);
  ellipseX += ellipseXSpeed;
  ellipseY += ellipseYSpeed;
  ellipse(ellipseX, ellipseY, ellipseDia, ellipseDia);
  
  //bounce off walls
  if (ellipseY > lineBottom) { // move up if you go passed the line
    ellipseYSpeed *= -1;
    ellipseY = lineBottom;
  }
  if( ellipseY < lineTop){
    ellipseYSpeed *= -1; // elyspeed multiply by -1 and asign it back to elyspeed
    ellipseY = lineTop; 
  }
  
  if (ellipseX > lineRight) { // move right if you go passed the line
    ellipseXSpeed *= -1;
    ellipseX = lineRight;
  }
  if( ellipseX < lineLeft){
    ellipseXSpeed *= -1;
    ellipseX = lineLeft; 
  }
  
  /*
  //bounce off button
  if (ellipseY > bottomBox) { // move up if you go passed the line
    ellipseYSpeed *= 1;
    ellipseY = bottomBox;
  }
  if( ellipseY < topBox){
    ellipseYSpeed *= 1; // elyspeed multiply by -1 and asign it back to elyspeed
    ellipseY = topBox; 
  }
  
  if (ellipseX > rightBox) { // move right if you go passed the line
    ellipseXSpeed *= 1;
    ellipseX = rightBox;
  }
  if( ellipseX < leftBox){
    ellipseXSpeed *= 1;
    ellipseX = leftBox; 
  }*/
  
  //lines for the screen
  line(0, lineTop, width, lineTop);
  line(lineLeft, 0, lineLeft, height);
  line(0, lineBottom, width, lineBottom);
  line(lineRight, 0, lineRight, height);
  stroke(0);
  
  //lines for the button box
  line(150, 150, 240, 150); //top
  line(150, 150, 150, 240); //left
  line(240, 240, 150, 240); //bottom
  line(240, 240, 240, 150); //right
  
  stroke(0);
  if(mousePressed) { //mouseClicked()
    if(mouseX > 150 && mouseX < 240 && mouseY > 150 && mouseY < 240) {
      textSize(30);
      fill(255, 69, 0);
      text("PLZ HELP", 10, 200);
      line(mouseX, mouseY, pmouseX, pmouseY);
    }
  }
}
/*every line I tried to activate for the circle to bounce off of wouldn't or would
  jump off of that x or y line entirely and stop moving freely around the button, plus when I tried
  changing mojuse pressed to mouse clicked it would keep telling me my braces were off but i had
  an equal amount of open curly brackets and closed brackets
  */
