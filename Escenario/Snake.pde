private class Snake extends GameObject {

  private int puntaje;
  private int velocidad;
  private int direccion;
  private Cabeza cabeza;
  private Cuerpo cuerpos;

  public Snake(PVector posicion, int velocidad) {
    this.posicion=posicion;
    this.velocidad=velocidad;
  }

  public void display() {
    cabeza=new Cabeza(new PVector(this.posicion.x, this.posicion.y));
    cuerpos=new Cuerpo(new PVector(this.posicion.x, this.posicion.y+15));
    this.mover(direccion);
  }

  public void mover(int direccion) {
    if (direccion==0) {
      this.posicion.x=this.posicion.x+velocidad;
    }
    if (direccion==1) {
      this.posicion.x=this.posicion.x-velocidad;
    }
    if (direccion==2) {
      this.posicion.y=this.posicion.y-velocidad;
    }
    if (direccion==3) {
      this.posicion.y=this.posicion.y+velocidad;
    }
  }

  public void visualizarPuntaje() {
  }
  
  public void setDireccion(int direccion){
    this.direccion=direccion;
  }
}
