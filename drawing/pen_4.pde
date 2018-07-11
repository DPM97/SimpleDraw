class Pen4 extends basicPen{
  int inkColor;
  float thickness;
  float x1, y1, x2, y2; // pass in mouseX, mouseY, pmouseX, pmouseY

  Pen4() { // constructor
    thickness = 5;
    inkColor = 0x000000;
  }


  //  draws line segments between memory saved mousex and mousey, and current mousex and mousey
  void drawSegment(float x1, float y1, float x2, float y2) {
    stroke(0x000000);
    rect(x1, y1, random(30,50), random(30,50));
  }
}
