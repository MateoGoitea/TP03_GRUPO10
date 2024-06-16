class Tanque{
  private Transform transform;
  private ImageComp img;
  private int velocidad;
  private int direccion;
  private ArrayList<Bala> balas;
  
public Tanque(float x,float y,int velocidad,ImageComp img){
  this.transform=new Transform(x,y);
  this.velocidad=velocidad;
  this.img=img;
  this.balas=new ArrayList<Bala>();
}
public void display(){
  //fill(255);
  //rect(this.transform.getPosicion().x,this.transform.getPosicion().y,200,100);
  image(this.img.getImg(),this.transform.getPosicion().x,this.transform.getPosicion().y,100,100);
  for(Bala bala: balas){
  bala.display();}
this.mover(direccion);

}
public void disparar(){
  
  balas.add(new Bala(transform.getPosicion().x+44,transform.getPosicion().y,-200));
  actualizarBala();
}
  public void actualizarBala(){
    for(Bala bala:balas){
      bala.moveBala();}
    }
  


public void mover(int direccion){
  PVector pos=this.transform.getPosicion();
if (direccion==0) {
      this.transform.getPosicion().x=pos.x+velocidad*Time.getDeltaTime(frameRate);
    }
    if (direccion==1) {
      this.transform.getPosicion().x=pos.x-velocidad*Time.getDeltaTime(frameRate);
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
