private Snake snake;
private ArrayList<Animal> animal;


public void setup() {
  size(600, 600);
  snake=new Snake(new PVector(100, 100), 5);// prueba del dibujo de snake
}

public void draw() {
  background(0);
  snake.display();
}

public void keyPressed() {
  if (keyCode==RIGHT) {
    snake.setDireccion(0);
  }
  if (keyCode==LEFT) {
    snake.setDireccion(1);
  }
  if (keyCode==UP) {
    snake.setDireccion(2);
  }
  if (keyCode==DOWN) {
    snake.setDireccion(3);
  }
}
