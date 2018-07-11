class Pen3 extends basicPen{ // splatter type pen
  float thickness;
  float x1, y1, x2, y2; // pass in mouseX, mouseY, pmouseX, pmouseY

  Pen3() { // constructor
    thickness = 5;
  }


  //  draws random ellipses at mousex and mousey with the current selected color
  void drawSegment(float x1, float y1, float x2, float y2) {
     stroke(_hueVal, 255, 255);
     strokeWeight(thickness);
     noFill();
     ellipse(x2,y2,random(15,40),random(15,40));
  }
}
