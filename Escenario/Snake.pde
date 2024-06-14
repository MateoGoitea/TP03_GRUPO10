private class Snake extends GameObject {

  private int puntaje;
  private int velocidad;
  private int direccion;
  private Cabeza cabeza;
  private Cuerpo cuerpos;

  private int posTexto;
  private int distTexto;

  public Snake(PVector posicion, int velocidad) {


    this.posicion=posicion;
    this.velocidad=velocidad;

    this.puntaje=0;
    this.posTexto=70;
    this.distTexto=20;

    cabeza=new Cabeza(new PVector(this.posicion.x, this.posicion.y));
    cuerpos=new Cuerpo(new PVector(this.posicion.x-10, this.posicion.y));
  }

  public void display() {

    cabeza.display(this.posicion);
    cuerpos.display(this.posicion);
 
    this.mover(direccion);
    this.visualizarPuntaje();
  }

  public void mover(int direccion) {
    if (direccion==0) {
      this.posicion.x=this.posicion.x+velocidad*DeltaTime.getDeltaTime(frameRate);
    }
    if (direccion==1) {
      this.posicion.x=this.posicion.x-velocidad*DeltaTime.getDeltaTime(frameRate);
    }
    if (direccion==2) {
      this.posicion.y=this.posicion.y-velocidad*DeltaTime.getDeltaTime(frameRate);
    }
    if (direccion==3) {
      this.posicion.y=this.posicion.y+velocidad*DeltaTime.getDeltaTime(frameRate);
    }
  }

  public void visualizarPuntaje() {
    fill(#ffffff);
    text("Puntaje:"+puntaje, 20, 20);
  }

  public void visualizarResultados() {
    stroke(#ffffff);
    strokeWeight(10);
    fill(0);
    rect(50, 50, 500, 500);

    fill(#ffffff);
    text("Animal Comido ---------------- Tiempo", posTexto, posTexto);
    for (int x=0; x<cabeza.animalTipo.size()-1; x++) {
      text(cabeza.animalTipo.get(x)+" ---------------- "+cabeza.tiempoComido.get(x), posTexto, posTexto+distTexto*(x+1));
    }
  }

  public void setDireccion(int direccion) {
    this.direccion=direccion;
  }

  public void setPuntaje(int puntaje) {
    this.puntaje=puntaje;
  }
  public int getPuntaje() {
    return this.puntaje;
  }
}
