private Snake snake;
private ArrayList<Animal> animal;

private boolean animalExist;


public void setup() {
  size(600, 600);
  frameRate(60);
  animal = new ArrayList<Animal>();
  
  animalExist=false;
  snake=new Snake(new PVector(100, 100), 200);// prueba del dibujo de snake
}

public void draw() {
  background(0);
    
  snake.display();
  
  if (animalExist==false){
    animal.add(new Animal(new PVector(random(0,width),random(0,height)),(int)random(1,4),loadImage("raton.png")));
    animalExist=true;
  }
  Animal ani = animal.get(0);
  ani.display();

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
