abstract class GameObject{
protected PVector posicion;

public abstract void display();

public PVector getPosicion(){
  return posicion;
}

public void setPosicion(PVector posicion){
  this.posicion=posicion;
}
}
