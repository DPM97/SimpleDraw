class Pen4 extends basicPen{
  int inkColor;
  float thickness;
  float x1, y1, x2, y2; // pass in mouseX, mouseY, pmouseX, pmouseY

  Pen4() { // constructor
    thickness = 5;
    inkColor = 0x000000;
  }


  //  draws random rect's at mousex and mousey with current selected color
  void drawSegment(float x1, float y1, float x2, float y2) {
    stroke(0x000000);
    rect(x1, y1, random(30,50), random(30,50));
  }
}
