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
  // reciben y almacenan la posicion de los colliders
  PVector pos1=this.transform.getPosicion();  
  PVector pos2=otroCollider.transform.getPosicion();
  //verifica los casos en los que existe la colision
  return pos1.x<pos2.x+otroCollider.ancho &&   
         pos1.x+this.ancho>pos2.x &&
         pos1.y<pos2.y+otroCollider.alto &&
         pos1.y+this.alto>pos2.y;
}
  //metodos accesores para la posicion del collider
   public PVector getPosicion(){
   return transform.getPosicion();
 }
   public void setPosicion(float x, float y){
   transform.setPosicion(x,y);
 }
}
