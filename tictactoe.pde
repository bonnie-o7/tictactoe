void setup() {
  size(1500, 1500);
}

int turns = 0;
String a1filled = "nothing";
String a2filled = "nothing";
String a3filled = "nothing";
String b1filled = "nothing";
String b2filled = "nothing";
String b3filled = "nothing";
String c1filled = "nothing";
String c2filled = "nothing";
String c3filled = "nothing";
int max = 9;
boolean end = false;

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
  
  
  if ((turns == max) || (end == true)) {
    fill(0);
    noStroke();
    rect(0, 650, 1500, 150);
    fill(255);
    textSize(60);
    text("Game over", 600, 750);
  }
   noStroke();
   fill(90, 100, 200);
   rect(700, 0, 100, 50);
}

void mouseClicked() {
  noFill();
  if ((turns == 0) && (mouseX >= 700) && (mouseX <= 800) && (mouseY >= 0) && (mouseY <= 50))  {
    turns += 1;
    max = 10;
    print("o's first");
  }
  
  if ((mouseX >= 100) && (mouseX <= 490) && (mouseY >= 100) && (mouseY <= 490) && (a1filled == "nothing")) { // top left
    turns += 1;
    print(turns);
    if (turns % 2 == 0) {
      a1filled = "o";
      stroke(69, 96, 69);
      strokeWeight(30);
      circle(300, 300, 250);
      if ((turns > 4) && (a2filled == "o") && (a3filled == "o") || (b1filled == "o") && (c1filled == "o") || (b2filled == "o") && (c3filled == "o")) {
        end = true;
      }
    } else {
      a1filled = "x";
      print("1 move");
      stroke(69);
      strokeWeight(30);
      line(200, 200, 400, 400);
      line(200, 400, 400, 200);
      if ((turns > 4) && (a2filled == "x") && (a3filled == "x") || (b1filled == "x") && (c1filled == "x") || (b2filled == "x") && (c3filled == "x")) {
        end = true;
      }
    }
  } else if ((mouseX >= 510) && (mouseX <= 990) && (mouseY >= 100) && (mouseY <= 490) && (a2filled == "nothing")) { // top middle
    turns += 1;
    print(turns);
    if (turns % 2 == 0) {
      a2filled = "o";
      stroke(69, 96, 69);
      strokeWeight(30);
      circle(750, 300, 250);
      if ((turns > 4) && (a1filled == "o") && (a3filled == "o") || (b2filled == "o") && (c2filled == "o")) {
        end = true;
      }
    } else {
      a2filled = "x";
      print("1 move");
      stroke(69);
      strokeWeight(30);
      line(650, 200, 850, 400);
      line(650, 400, 850, 200);
      if ((turns > 4) && (a1filled == "x") && (a3filled == "x") || (b2filled == "x") && (c2filled == "x")) {
        end = true;
      }
    }
  } else if ((mouseX >= 1010) && (mouseX <= 1400) && (mouseY >= 100) && (mouseY <= 490) && (a3filled == "nothing")) {
    turns += 1;
    print(turns);
    if (turns % 2 == 0) {
      a3filled = "o";
      stroke(69, 96, 69);
      strokeWeight(30);
      circle(1200, 300, 250);
      if ((turns > 4) && (a2filled == "o") && (a1filled == "o") || (b3filled == "o") && (c3filled == "o") || (b2filled == "o") && (c1filled == "o")) {
        end = true;
      }
    } else {
      a3filled = "x";
      print("1 move");
      stroke(69);
      strokeWeight(30);
      line(1100, 200, 1300, 400);
      line(1100, 400, 1300, 200);
      if ((turns > 4) && (a2filled == "x") && (a1filled == "x") || (b3filled == "x") && (c3filled == "x") || (b2filled == "x") && (c1filled == "x")) {
        end = true;
      }
    }
  } else if ((mouseX >= 100) && (mouseX <= 490) && (mouseY >= 510) && (mouseY <= 990) && (b1filled == "nothing")) { // middle left
    turns += 1;
    print(turns);
    if (turns % 2 == 0) {
      b1filled = "o";
      stroke(69, 96, 69);
      strokeWeight(30);
      circle(300, 750, 250);
      if ((turns > 4) && (b2filled == "o") && (b3filled == "o") || (a1filled == "o") && (c1filled == "o")) {
        end = true;
      }
    } else {
      b1filled = "x";
      print("1 move");
      stroke(69);
      strokeWeight(30);
      line(200, 650, 400, 850);
      line(200, 850, 400, 650);
      if ((turns > 4) && (b2filled == "x") && (b3filled == "x") || (a1filled == "x") && (c1filled == "x")) {
        end = true;
      }
    }
  } else if ((mouseX >= 510) && (mouseX <= 990) && (mouseY >= 510) && (mouseY <= 990) && (b2filled == "nothing")) { // middle
    turns += 1;
    print(turns);
    if (turns % 2 == 0) {
      b2filled = "o";
      stroke(69, 96, 69);
      strokeWeight(30);
      circle(750, 750, 250);
      if ((turns > 4) && (a1filled == "o") && (c3filled == "o") || (a2filled == "o") && (c2filled == "o") || (a3filled == "o") && (c1filled == "o") || (b1filled == "o") && (b3filled == "o")) {
        end = true;
      }
    } else {
      print("1 move");
      b2filled = "x";
      stroke(69);
      strokeWeight(30);
      line(650, 650, 850, 850);
      line(650, 850, 850, 650);
      if ((turns > 4) && (a1filled == "x") && (c3filled == "x") || (a2filled == "x") && (c2filled == "x") || (a3filled == "x") && (c1filled == "x") || (b1filled == "x") && (b3filled == "x")) {
        end = true;
      }
    }
  } else if ((mouseX >= 1010) && (mouseX <= 1400) && (mouseY >= 510) && (mouseY <= 990) && (b3filled == "nothing")) {
    turns += 1;
    print(turns);
    if (turns % 2 == 0) {
      b3filled = "o";
      stroke(69, 96, 69);
      strokeWeight(30);
      circle(1200, 750, 250);
      if ((turns > 4) && (b2filled == "o") && (b1filled == "o") || (a3filled == "o") && (c3filled == "o")) {
        end = true;
      }
    } else {
      b3filled = "x";
      print("1 move");
      stroke(69);
      strokeWeight(30);
      line(1100, 650, 1300, 850);
      line(1100, 850, 1300, 650);
      if ((turns > 4) && (b2filled == "x") && (b1filled == "x") || (a3filled == "x") && (c3filled == "x")) {
        end = true;
      }
    }
  } else if ((mouseX >= 100) && (mouseX <= 490) && (mouseY >= 1010) && (mouseY <= 1400) && (c1filled == "nothing")) { // bottom left
    turns += 1;
    print(turns);
    if (turns % 2 == 0) {
      c1filled = "o";
      stroke(69, 96, 69);
      strokeWeight(30);
      circle(300, 1200, 250);
      if ((turns > 4) && (a2filled == "o") && (a1filled == "o") || (b1filled == "o") && (a1filled == "o") || (b2filled == "o") && (a3filled == "o")) {
        end = true;
      }
    } else {
      c1filled = "x";
      print("1 move");
      stroke(69);
      strokeWeight(30);
      line(200, 1300, 400, 1100);
      line(200, 1100, 400, 1300);
      if ((turns > 4) && (a2filled == "x") && (a1filled == "x") || (b1filled == "x") && (a1filled == "x") || (b2filled == "x") && (a3filled == "x")) {
        end = true;
      }
    }
  } else if ((mouseX >= 510) && (mouseX <= 990) && (mouseY >= 1010) && (mouseY <= 1400) && (c2filled == "nothing")) { // bottom middle
    turns += 1;
    print(turns);
    if (turns % 2 == 0) {
      c2filled = "o";
      stroke(69, 96, 69);
      strokeWeight(30);
      circle(750, 1200, 250);
      if ((turns > 4) && (c1filled == "o") && (c3filled == "o") || (b2filled == "o") && (a2filled == "o")) {
        end = true;
      }
    } else {
      print("1 move");
      c2filled = "x";
      stroke(69);
      strokeWeight(30);
      line(650, 1300, 850, 1100);
      line(650, 1100, 850, 1300);
      if ((turns > 4) && (c1filled == "x") && (c3filled == "x") || (b2filled == "x") && (a2filled == "x")) {
        end = true;
      }
    }
  } else if ((mouseX >= 1010) && (mouseX <= 1400) && (mouseY >= 1010) && (mouseY <= 1400) && (c3filled == "nothing")) {
    turns += 1;
    print(turns);
    if (turns % 2 == 0) {
      c3filled = "o";
      stroke(69, 96, 69);
      strokeWeight(30);
      circle(1200, 1200, 250);
      if ((turns > 4) && (c2filled == "o") && (c1filled == "o") || (b3filled == "o") && (a3filled == "o") || (b2filled == "o") && (a1filled == "o")) {
        end = true;
      }
    } else {
      print("1 move");
      c3filled = "x";
      stroke(69);
      strokeWeight(30);
      line(1100, 1300, 1300, 1100);
      line(1100, 1100, 1300, 1300);
      if ((turns > 4) && (c2filled == "x") && (c1filled == "x") || (b3filled == "x") && (a3filled == "x") || (b2filled == "x") && (a1filled == "x")) {
        end = true;
      }
    }
  }
}

    
