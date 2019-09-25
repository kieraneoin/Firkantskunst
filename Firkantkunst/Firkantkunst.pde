int xstart = 0;
int ystart = 0;
int b= 10; //firkants bredde
int a = 1; //afstand mellem firkanter
int e = 192; //mængde firkanter langs x-aksen
int f = 108; //mængde firkanter langs y-aksen
int jiggle = 5; // ryster firkanterne


void setup() {
  fullScreen();
  //size(500, 500);
}

void draw() {
  clear();
  for (int j=0; j<f; ++j) {
    int y = ystart + j*b + j*a;
    for (int i=0; i<e; ++i) {
      int x = xstart + i*b + i*a;
      int d = (int)random(-jiggle, jiggle);
      fill(20+(x + y)*0.25, 0, 0);
      rect(x+d, y+d, b, b);
    }
  }
}
