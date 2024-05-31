private class Cuadrado{
  
  private PVector posicion;
  private int tamLado;
  
  public Cuadrado(PVector posicion,int tamLado){
    this.posicion=posicion;
    this.tamLado=tamLado;
    noStroke();
    fill(#21E82F);
    square(this.posicion.x,this.posicion.y,tamLado);
  }
  
}
