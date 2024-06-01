private class Cabeza{
  private PVector posicion;
  private Collider collider;
  
  public Cabeza(PVector posicion){
    this.posicion=posicion;
    collider=new Collider(20.0,new PVector(this.posicion.x,this.posicion.y));
    noStroke();
    fill(#0BFF00);
    square(this.posicion.x,this.posicion.y-20,20);
    rect(this.posicion.x-10,this.posicion.y,40,20);
  }
  
  public void comer(Animal animalComido){
  }
}
