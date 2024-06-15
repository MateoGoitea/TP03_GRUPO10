class Transform{
  private PVector posicion;
  
  public Transform(float x,float y){
  this.posicion=new PVector(x,y);}

//Metodos accesores de la posicion
  public PVector getPosicion(){
  return posicion;}
  
  public void setPosicion(float x,float y){
  this.posicion.set(x,y);}
}
