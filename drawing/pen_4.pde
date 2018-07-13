class Pen4 extends basicPen {
  float x1, y1, x2, y2; // pass in mouseX, mouseY, pmouseX, pmouseY
  float thickness;
  Pen4() { // constructor
    thickness = 5;
  }


  // imports and draws picture at mousex and mousey
  void drawSegment(float x1, float y1, float x2, float y2) {
    PImage test;
    test = loadImage("picture/peter.jpg");
    noFill();
    stroke(_hueVal, 255, 255);
    strokeWeight(thickness);
    rect(x2 - 36, y2 - 49, 73, 97);
    image(test, x2 - 36, y2 - 49);
  }
}
