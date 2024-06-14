class Tanque{
  private Transform transform;
  private ImageComponent imageComponent;
  private int velocidad;
  private int direccion;
  
public Tanque(Transform transform,ImageComponent imageComponent){
  this.transform=transform;
  this.imageComponent=imageComponent;
}
public Tanque(Transform transform,ImageComponent imageComponent,int velocidad){
  this.transform=transform;
  this.imageComponent=imageComponent;
  this.velocidad=velocidad;
}
public void display(){
imageMode(CENTER);
this.imageComponent.displayImage(transform.getPosicion(),80,100);
this.mover(direccion);
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
