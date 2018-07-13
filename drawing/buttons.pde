class Buttons {
  PVector pos;
  float w;
  float h;
  float x;
  float y;
  int fillColor;
  String text;

  // constructor
  Buttons (float _x, float _y, float _btnW, float _btnH, String _text) {
    x = _x;
    y = _y;
    w = _btnW;
    h = _btnH;
    text = _text;
    fillColor = 0x000000;
    noStroke();
  }


  // draw buttons
  void drawMe() {
    stroke(_hueVal, 255, 255);
    fill(fillColor);
    rect(x, y, w, h);
    fill(#ffffff);
    textAlign(CENTER);
    textSize(12);
    fill(_hueVal, 255, 255);
    text(text, x + (w/2), y + (h/2));
  }

  //  check if mouse is over button
  boolean mouseOverMe() {
    return ((mouseX > x) && (mouseX < x+w) && (mouseY > y) && (mouseY < y+h));
  }
}
