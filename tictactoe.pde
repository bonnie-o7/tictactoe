void setup() {
  size(1500, 1500);
}

int turns = 0;
boolean a1filled = false;
boolean a2filled = false;
boolean a3filled = false;
boolean b1filled = false;
boolean b2filled = false;
boolean b3filled = false;
boolean c1filled = false;
boolean c2filled = false;
boolean c3filled = false;
int max = 9;

void draw() {
  // the board
  fill(255);
  stroke(255);
  strokeWeight(16);
  line(100, 500, 1400, 500); // horizontal 1
  line(100, 1000, 1400, 1000); // horizontal 2
  line(500, 100, 500, 1400); // vertical 1
  line(1000, 100, 1000, 1400); // vertical 2
  
  // A1 A2 A3
  // B1 B2 B3
  // C1 C2 C3
  
  
  if (turns == max) {
    fill(0);
    rect(0, 650, 1500, 150);
    fill(255);
    textSize(60);
    text("Game over", 600, 750);
  }
  if (turns == 0) {
    fill(225);
    rect(700, 0, 100, 50);
    fill(100);
  }
}

void mouseClicked() {
  noFill();
  if ((turns == 0) && (mouseX >= 700) && (mouseX <= 800) && (mouseY >= 0) && (mouseY <= 50))  {
    turns += 1;
    max = 10;
    print("o's first");
  }
  
  if ((mouseX >= 100) && (mouseX <= 490) && (mouseY >= 100) && (mouseY <= 490) && (a1filled == false)) { // top left
    a1filled= true;
    turns += 1;
    print(turns);
    if (turns % 2 == 0) {
      stroke(69, 96, 69);
      strokeWeight(30);
      circle(300, 300, 250);
    } else {
      print("1 move");
      stroke(69);
      strokeWeight(30);
      line(200, 200, 400, 400);
      line(200, 400, 400, 200);
    }
  } else if ((mouseX >= 510) && (mouseX <= 990) && (mouseY >= 100) && (mouseY <= 490) && (a2filled == false)) { // top middle
    a2filled= true;
    turns += 1;
    print(turns);
    if (turns % 2 == 0) {
      stroke(69, 96, 69);
      strokeWeight(30);
      circle(750, 300, 250);
    } else {
      print("1 move");
      stroke(69);
      strokeWeight(30);
      line(650, 200, 850, 400);
      line(650, 400, 850, 200);
    }
  } else if ((mouseX >= 1010) && (mouseX <= 1400) && (mouseY >= 100) && (mouseY <= 490) && (a3filled == false)) {
    a3filled= true;
    turns += 1;
    print(turns);
    if (turns % 2 == 0) {
      stroke(69, 96, 69);
      strokeWeight(30);
      circle(1200, 300, 250);
    } else {
      print("1 move");
      stroke(69);
      strokeWeight(30);
      line(1100, 200, 1300, 400);
      line(1100, 400, 1300, 200);
    }
  } else if ((mouseX >= 100) && (mouseX <= 490) && (mouseY >= 510) && (mouseY <= 990) && (b1filled == false)) { // middle left
    b1filled= true;
    turns += 1;
    print(turns);
    if (turns % 2 == 0) {
      stroke(69, 96, 69);
      strokeWeight(30);
      circle(300, 750, 250);
    } else {
      print("1 move");
      stroke(69);
      strokeWeight(30);
      line(200, 650, 400, 850);
      line(200, 850, 400, 650);
    }
  } else if ((mouseX >= 510) && (mouseX <= 990) && (mouseY >= 510) && (mouseY <= 990) && (b2filled == false)) { // middle
    b2filled= true;
    turns += 1;
    print(turns);
    if (turns % 2 == 0) {
      stroke(69, 96, 69);
      strokeWeight(30);
      circle(750, 750, 250);
    } else {
      print("1 move");
      stroke(69);
      strokeWeight(30);
      line(650, 650, 850, 850);
      line(650, 850, 850, 650);
    }
  } else if ((mouseX >= 1010) && (mouseX <= 1400) && (mouseY >= 510) && (mouseY <= 990) && (b3filled == false)) {
    b3filled= true;
    turns += 1;
    print(turns);
    if (turns % 2 == 0) {
      stroke(69, 96, 69);
      strokeWeight(30);
      circle(1200, 750, 250);
    } else {
      print("1 move");
      stroke(69);
      strokeWeight(30);
      line(1100, 650, 1300, 850);
      line(1100, 850, 1300, 650);
    }
  } else if ((mouseX >= 100) && (mouseX <= 490) && (mouseY >= 1010) && (mouseY <= 1400) && (c1filled == false)) { // bottom left
    c1filled= true;
    turns += 1;
    print(turns);
    if (turns % 2 == 0) {
      stroke(69, 96, 69);
      strokeWeight(30);
      circle(300, 1200, 250);
    } else {
      print("1 move");
      stroke(69);
      strokeWeight(30);
      line(200, 1300, 400, 1100);
      line(200, 1100, 400, 1300);
    }
  } else if ((mouseX >= 510) && (mouseX <= 990) && (mouseY >= 1010) && (mouseY <= 1400) && (c2filled == false)) { // bottom middle
    c2filled= true;
    turns += 1;
    print(turns);
    if (turns % 2 == 0) {
      stroke(69, 96, 69);
      strokeWeight(30);
      circle(750, 1200, 250);
    } else {
      print("1 move");
      stroke(69);
      strokeWeight(30);
      line(650, 1300, 850, 1100);
      line(650, 1100, 850, 1300);
    }
  } else if ((mouseX >= 1010) && (mouseX <= 1400) && (mouseY >= 1010) && (mouseY <= 1400) && (c3filled == false)) {
    c3filled = true;
    turns += 1;
    print(turns);
    if (turns % 2 == 0) {
      stroke(69, 96, 69);
      strokeWeight(30);
      circle(1200, 1200, 250);
    } else {
      print("1 move");
      stroke(69);
      strokeWeight(30);
      line(1100, 1300, 1300, 1100);
      line(1100, 1100, 1300, 1300);
    }
  }
}
