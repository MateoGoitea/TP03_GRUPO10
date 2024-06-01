private class Snake extends GameObject{
  
  private int puntaje;
  private Cabeza cabeza;
  private Cuerpo cuerpos;
  
  public Snake(PVector posicion){
    this.posicion=posicion;
    cabeza=new Cabeza(new PVector(this.posicion.x,this.posicion.y));
    cuerpos=new Cuerpo(new PVector(this.posicion.x,this.posicion.y+15));
  }

  public void display(){
  }
  
  public void mover(){
  }
  
  public void visualizarPuntaje(){
  }
}
