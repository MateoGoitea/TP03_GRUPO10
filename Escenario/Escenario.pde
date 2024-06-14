//Objetos
private Snake snake;
private ArrayList<Animal> animal;
//Variables control si hay un animal en pantalla y conteo del tiempo
private boolean animalExist;
private int tiempo;
//Variable para la maquina de estados
private int estado;
//Variable para la fuente de texto
private PFont font;

public void setup() {
  size(600, 600);
  frameRate(60);
  font=createFont("arial.ttf", 20);
  textFont(font);
  animal = new ArrayList<Animal>();

  animalExist=false;
  tiempo=0;
  estado=StateMachine.JUGANDO;

  snake=new Snake(new PVector(10, 10), 200);
}

public void draw() {
  //El estado del juego empieza con JUGANDO
  if (estado==StateMachine.JUGANDO) {
    background(0);

    //Conteo del tiempo
    tiempo=(millis()+1000)/1000;
    text("Tiempo: "+tiempo, width-100, 20);

    //Dibujado del snake
    snake.display();

    //Si no hay un animal en pantalla, se crea uno en posicion aleatoria
    if (animalExist==false) {
      animal.add(new Animal(new PVector(random(20, width-20), random(20, height-20)), (int)random(1, 4), loadImage("raton.png")));
      animalExist=true;
    }
    Animal ani = animal.get(0);
    ani.display();

    //Control de colision de la cabeza come animal
    snake.cabeza.comer(ani);
  }

  //Si el tiempo es mayor a 60 el estado se cambia a TERMINADO y se muestran los resultados
  if (tiempo>=60) {
    estado=StateMachine.TERMINADO;
    snake.visualizarResultados();
  }
}

//Controles del juego
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

public void setAnimalExist (boolean animalExist) {
  this.animalExist=animalExist;
}

public int getTiempo() {
  return this.tiempo;
}
