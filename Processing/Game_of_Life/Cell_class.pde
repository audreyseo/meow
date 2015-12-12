class Cell {
  int x, y, s;
  boolean alive;
  int timer;

  Cell(int ex, int why) {
    x = ex;
    y = why;
    s = 20;
    alive = false;
  }

  void draw() {
    noStroke();
    fill(90, 90, 90);
    if (mousePressed)
      alive(clicked());

    if (alive)
      fill(255, 255, 255);
    rect(x, y, s, s);
  }

  void alive(boolean maybe) {
    if (maybe && timer < millis()) {
      alive = !alive;
    }
    timer = millis() + 20;
  }

  boolean clicked() {
    println("clicked");
    return(mouseX < x + s && mouseX > x && mouseY < y + s && mouseY > y && mousePressed);
  }

  boolean alive() {
    return(alive);
  }
}