class Bala{
  private Collider collider;
  private Transform transform;
  private float velocity;
  
  
  //constuctor de la bala
  public Bala(float x,float y,float velocity){
   this.transform=new Transform(x,y);
   this.velocity=velocity;
   this.collider=new Collider(x,y,10,20);
  }
  
  public void display(){
  noStroke();
  fill(#DEFC00);
  rect(this.transform.getPosicion().x,this.transform.getPosicion().y,10,20);
  }
  
  
  
  
  //se encarga de reasignar la posicion mientras la bala se mueve
  public void actulizarCollider(){  
  PVector pos=transform.getPosicion();
  collider.setPosicion(pos.x,pos.y);
  }
  
  //metodo accesor getter
  public Collider getCollider(){
  return collider;}
  
}
