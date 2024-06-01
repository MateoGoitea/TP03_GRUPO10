private class Cuerpo{
 private Cuadrado cuadrado;
  private ArrayList<Cuadrado> cuadrados;
  private PVector posicion;
  public Cuerpo(PVector posicion){
    this.posicion=posicion;
    cuadrado=new Cuadrado(new PVector(this.posicion.x,this.posicion.y+10),20);
    
  }
  
  public void crecer(Cabeza comidoPorCabeza){
  }
}
