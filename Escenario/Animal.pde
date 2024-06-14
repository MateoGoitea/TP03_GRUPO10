private class Animal extends GameObject {

  private int valorAnimal;
  private int tipo;
  private PImage imagen;
  private Collider collider;


  public Animal(PVector posicion, int tipo, PImage imagen) {
    this.posicion=posicion;
    this.tipo=tipo;

    //Segun el tipo obtenido se le asignará su imagen y valor correspondientes
    switch(tipo) {
    case 1:
      this.imagen=loadImage("insecto.png");
      valorAnimal=5;
      break;
    case 2:
      this.imagen=loadImage("raton.png");
      valorAnimal=10;
      break;
    case 3:
      this.imagen=loadImage("pajaro.png");
      valorAnimal=15;
      break;
    }

    this.collider=new Collider(20.0,this.posicion);

    this.display();
  }

  public void display() {
    image(this.imagen, this.posicion.x, this.posicion.y);
  }


  public int getValor() {
    return this.valorAnimal;
  }

  public Collider getCollider() {
    return this.collider;
  }

  public int getTipo() {
    return this.tipo;
  }
}
