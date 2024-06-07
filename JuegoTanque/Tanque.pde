class Tanque{
  private Transform transform;
  private ImageComponent imageComponent;
  private PVector velocidad;

public Tanque(Transform transform,ImageComponent imageComponent){
  this.transform=transform;
  this.imageComponent=imageComponent;
}
public Tanque(Transform transform,ImageComponent imageComponent,PVector velocidad){
  this.transform=transform;
  this.imageComponent=imageComponent;
  this.velocidad=velocidad;
}
public void display(){
imageMode(CENTER);
this.imageComponent.displayImage(transform.getPosicion(),100,100);}
}
