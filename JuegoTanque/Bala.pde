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
    stroke(0);
    fill(#DEFC00);
    rect(this.transform.getPosicion().x,this.transform.getPosicion().y,10,20); 
 }
  
  public void moveBala(){
    float alto=20;
    PVector pos=this.transform.getPosicion();
    transform.setPosicion(pos.x,(pos.y-alto)+this.velocity*Time.getDeltaTime(frameRate));
    this.actualizarCollider();
 }
  
  //se encarga de reasignar la posicion mientras la bala se mueve
  private void actualizarCollider(){  
    PVector pos=transform.getPosicion();
    collider.setPosicion(pos.x,pos.y);
 }
  
  //metodos accesores
  public Collider getCollider(){
    return collider;
 }
  public float getVelocity(){
    return velocity;
 }
  public float getTransformY(){
    return transform.getPosicion().y;
 }
  
}
