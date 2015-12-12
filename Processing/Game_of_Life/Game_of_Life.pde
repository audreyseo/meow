//version of game of life
Cell cell;

void setup() {
  size(200, 200);
  cell = new Cell (110, 110);
}

void draw() {
  cell.draw();
}