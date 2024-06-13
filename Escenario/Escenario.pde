private Snake snake;
private ArrayList<Animal> animal;


private boolean animalExist;
private int tiempo;

private int estado;

public void setup() {
  size(600, 600);
  frameRate(60);
  animal = new ArrayList<Animal>();


  animalExist=false;
  tiempo=0;
  estado=StateMachine.JUGANDO;
  
  snake=new Snake(new PVector(100, 100), 200);
}

public void draw() {
  if (estado==StateMachine.JUGANDO){
  background(0);
  
  tiempo=(millis()+1000)/1000;
  text("Tiempo: "+tiempo,width-100,20);

  snake.display();

  if (animalExist==false) {
    animal.add(new Animal(new PVector(random(0, width), random(0, height)), (int)random(1, 4), loadImage("raton.png")));
    animalExist=true;
  }
  Animal ani = animal.get(0);
  ani.display();

  snake.cabeza.comer(ani);
  }
  if (tiempo>=10){
    estado=StateMachine.TERMINADO;
    snake.visualizarResultados();
  }
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

public void setAnimalExist (boolean animalExist){
  this.animalExist=animalExist;
}

public int getTiempo(){
  return this.tiempo;
}
