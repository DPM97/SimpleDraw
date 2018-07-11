class Eraser extends basicPen {
  float x1, y1, x2, y2; // pass in mouseX, mouseY, pmouseX, pmouseY

  Eraser() { // constructor
  }


  //  draws the ellipse's at mouseX, mouseY
  void drawSegment(float x1, float y1, float x2, float y2) {
    noStroke();
    fill(0, 0, 255);
    ellipse(x2, y2, 40, 40);
  }
}
