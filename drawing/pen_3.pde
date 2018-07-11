class Pen3 extends basicPen{ // splatter type pen
  int inkColor;
  float thickness;
  float x1, y1, x2, y2; // pass in mouseX, mouseY, pmouseX, pmouseY

  Pen3() { // constructor
    thickness = 5;
    inkColor = 0x000000;
  }


  //  draws random ellipses at mousex and mousey with the current selected color
  void drawSegment(float x1, float y1, float x2, float y2) {
     stroke(_hueVal, 255, 255);
     strokeWeight(5);
     noFill();
     ellipse(x2,y2,random(10,30),random(10,30));
  }
}
