class Tanque{
  private Transform transform;
  private ImageComp imag;
  private int velocidad;
  private int direccion;
  private ArrayList<Bala> balas;
  
public Tanque(float x,float y,int velocidad){
  this.transform=new Transform(x,y);
  this.velocidad=velocidad;
  this.balas=new ArrayList<Bala>();
}
public void display(){
  fill(255);
  rect(this.transform.getPosicion().x,this.transform.getPosicion().y,200,100);
  for(Bala bala: balas){
  bala.display();}
this.mover(direccion);

}
public void disparar(){
  balas.add(new Bala(transform.getPosicion().y,transform.getPosicion().y,-200));
}
  public void actualizarBala(){
    for(Bala bala:balas){
      bala.moveBala();}
    }
  


public void mover(int direccion){
  
if (direccion==0) {
      this.transform.getPosicion().x=this.transform.getPosicion().x+velocidad*Time.getDeltaTime(frameRate);
    }
    if (direccion==1) {
      this.transform.getPosicion().x=this.transform.getPosicion().x-velocidad*Time.getDeltaTime(frameRate);
    }
    if(direccion==2){
      this.disparar();}
}

  public void setDireccion(int direccion) {
    this.direccion=direccion;
  }
  public ArrayList<Bala> getBalas(){
  return balas;}
  
}
