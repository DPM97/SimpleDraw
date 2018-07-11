class basicPen {
  int inkColor;
  float thickness;
  float x1, y1, x2, y2; // pass in mouseX, mouseY, pmouseX, pmouseY

  basicPen() { // constructor
    thickness = 5;
    inkColor = 0x000000;
  }


  //  draws line segments between memory saved mousex and mousey, and current mousex and mousey
  void drawSegment(float x1, float y1, float x2, float y2) {
    stroke(_hueVal, 255, 255);
    line(x1, y1, x2, y2);
  }


  //  Supposed to draw dot at point pressed
  void drawDot(int x, int y, int rad) {
    fill(_hueVal, 255, 255);
    ellipseMode(RADIUS);
    ellipse(x, y, rad, rad);
  }
}
