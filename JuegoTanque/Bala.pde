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
  //metodo accesor getter
  public Collider getCollider(){
  return collider;}
  
}
