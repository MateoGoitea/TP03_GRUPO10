private class Cuadrado {

  private PVector posicion;
  private int tamLado;

  public Cuadrado(PVector posicion, int tamLado) {
    this.posicion=posicion;
    this.tamLado=tamLado;
  }
  
  public PVector getPosicion() {
    return this.posicion;
  }
}
