class Pen2 extends basicPen{
  int inkColor;
  float thickness;
  float x1, y1, x2, y2; // pass in mouseX, mouseY, pmouseX, pmouseY

  Pen2() { // constructor
    thickness = 5;
    inkColor = 0x000000;
  }

// draws star -- took from https://processing.org/examples/star.html
void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}



  //  draws the object at mouseX, mouseY
  void drawSegment(float x1, float y1, float x2, float y2) {
    stroke(_hueVal, 255, 255);
    strokeWeight(1);
    fill(_hueVal, 255, 255);
    star(mouseX, mouseY, 20, 10, 20); 

    
  }
}
