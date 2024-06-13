private class Cabeza {
  private PVector posicion;
  private boolean estadoAnimal;
  private Collider collider;

  public Cabeza(PVector posicion) {
    this.posicion=posicion;
    this.collider=new Collider(20.0, this.posicion);
    noStroke();
    fill(#0BFF00);
    circle(this.posicion.x, this.posicion.y, 40);
  }

  public void comer(Animal animalComido) {

    boolean isCollide = this.collider.validarCollider(animalComido.getCollider());

    if (isCollide==true) {
      
      int puntajeSumado=animalComido.getValor();
      snake.setPuntaje(snake.getPuntaje()+puntajeSumado);
      
      setAnimalExist(false);
      animal.remove(0);
      
      
    }
  }


  public Collider getCollider() {
    return this.collider;
  }

  public void setPosicion(PVector posicion) {
    this.posicion=posicion;
    this.collider.setPosCentro(this.posicion);
  }
}
