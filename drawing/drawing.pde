basicPen bPen = new basicPen();
Pen2 penTwo = new Pen2();
Pen3 penThree = new Pen3();
Pen4 penFour = new Pen4();
Eraser eraser = new Eraser();

basicPen [] penChoices = new basicPen[5];
float _barWidth=300.0;    //slider-bar width;
float _sliderPos=0.0;  //initial slider position
float _hueVal=map(_sliderPos, 0.0, _barWidth, 0.0, 255.0);
float colorLine;
int chosen;
basicPen pen;
;  //initial hueValue
Buttons button1; // regular pen button
Buttons button2; // pen 2 button
Buttons button3; // pen 3 button
Buttons button4; // pen 4 button
Buttons button5; // erase button
Buttons [] button;


void setup() {
  size(800, 600);
  background(#ffffff);
  colorMode(HSB);
  button1 = new Buttons(0, 520, 200, 80, "DEFAULT PEN");
  button2 = new Buttons(200, 520, 200, 80, "SPIKES");
  button3 = new Buttons(400, 520, 200, 80, "ELLIPSE");
  button4 = new Buttons(600, 520, 199, 80, "RECTANGULAR PEN");
  button5 = new Buttons(600, 0, 199, 80, "ERASER");

  button = new Buttons[5];
  button[0] = button1;
  button[1] = button2;
  button[2] = button3;
  button[3] = button4;
  button[4] = button5;
  penChoices[0] = bPen;
  penChoices[1] = penTwo;
  penChoices[2] = penThree;
  penChoices[3] = penFour;
  penChoices[4] = eraser;
  pen = penChoices[0];



  // pen.drawDot();
}

void draw() {
  drawButtons();
  drawSlider();
}

void mouseReleased() {
  noStroke();
  for (int i=0; i<5; i++) {
    if (button[i].mouseOverMe()) {
      chosen = i;
      pen = penChoices[chosen];
    }
  }
}

void mouseClicked() {
  bPen.drawDot(mouseX, mouseY, 5);
}

void mouseDragged() {
  pen.drawSegment(pmouseX, pmouseY, mouseX, mouseY);
}


void drawButtons() {
  for (int i=0; i<5; i++) {
    button[i].drawMe();
  }
}


// draws slider - taken from http://cs1335-documentation.readthedocs.io/en/latest/hsbSlider.html
void drawSlider() {
  _hueVal= drawSlider(20.0, 20.0, _barWidth, 30.0, _hueVal);
}

float drawSlider(float xPos, float yPos, float sWidth, float sHeight, float hueVal) {
  fill(255);
  noStroke();
  rect(0, 0, 375, 58);  //draw white background behind slider

  float sliderPos=map(hueVal, 0.0, 255.0, 0.0, sWidth); //find the current sliderPosition from hueVal

  for (int i=0; i<sWidth; i++) {  //draw 1 line for each hueValue from 0-255
    hueVal=map(i, 0.0, sWidth, 0.0, 255.0);  //get hueVal for each position in the bar
    stroke(hueVal, 255, 255);
    line(xPos+i, yPos, xPos+i, yPos+sHeight);
  }
  if (mousePressed && mouseX>xPos && mouseX<(xPos+sWidth) && mouseY>yPos && mouseY <yPos+sHeight) {
    sliderPos=mouseX-xPos; // tells the program if the mouse is over the slider and slides it with the mouse
  }
  // drawing the slider
  stroke(100);
  hueVal=map(sliderPos, 0.0, sWidth, 0.0, 255.0); 
  fill(hueVal, 255, 255);
  rect(sliderPos+xPos-3, yPos-5, 6, sHeight+10);
  rect(sWidth+40, yPos, sHeight, sHeight);
  return hueVal;
}
