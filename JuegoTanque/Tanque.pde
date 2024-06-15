class Tanque{
  private Transform transform;
  private ImageComp imag;
  private int velocidad;
  private int direccion;
  
public Tanque(float x,float y,int velocidad){
  this.transform=new Transform(x,y);
  this.velocidad=velocidad;
}
public void display(){
  
this.mover(direccion);

}
public void disparar(){

}

public void mover(int direccion){
  
if (direccion==0) {
      this.transform.getPosicion().x=this.transform.getPosicion().x+velocidad*Time.getDeltaTime(frameRate);
    }
    if (direccion==1) {
      this.transform.getPosicion().x=this.transform.getPosicion().x-velocidad*Time.getDeltaTime(frameRate);
    }
}

  public void setDireccion(int direccion) {
    this.direccion=direccion;
  }
}
