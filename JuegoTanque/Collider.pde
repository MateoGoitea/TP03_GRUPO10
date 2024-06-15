class Collider{
private Transform transform;
private float ancho;
private float alto;

  //Constructor del collider
  public Collider(float x, float y ,float ancho,float alto){
  this.transform=new Transform(x,y);
  this.ancho=ancho;
  this.alto=alto;
  }
  
  //metodo de verificacion de una colision; utilizara colliders rectangulares
public boolean verificarColision(Collider otroCollider){
  

}

}
