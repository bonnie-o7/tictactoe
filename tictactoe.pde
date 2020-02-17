void setup() {
  size(1500, 1500);
}

int turn = 0;
String character = "";

void draw() {
  // the board
  strokeWeight(16);
  line(100, 500, 1400, 500);
  line(100, 1000, 1400, 1000);
  line(500, 100, 500, 1400);
  line(1000, 100, 1000, 1400);
  
  
  turn += 1;
  if (turn % 2 == 0) {
    character = "x";
  } else {
    character = "o";
  }
  
  if (mousePressed) {
    
  }
}
