class Tanque{
  private Transform transform;
  private ImageComp img;
  private int velocidad;
  private int direccion;
  private ArrayList<Bala> balas;

      //constructor  
  public Tanque(float x,float y,int velocidad,ImageComp img){
    this.transform=new Transform(x,y);
    this.velocidad=velocidad;
    this.img=img;
    this.balas=new ArrayList<Bala>();
 }

    //metodo de dibujo
  public void display(){

    image(this.img.getImg(),this.transform.getPosicion().x,this.transform.getPosicion().y,100,100);
    for(Bala bala: balas){
    bala.display();
   }

  this.mover(direccion);

 }

  public void disparar(){
  
    balas.add(new Bala(transform.getPosicion().x+44,transform.getPosicion().y,-200));
    actualizarBala();
  
 }

   // actualiza la posicion de la bala y la elimina si sale de lienzo
  public void actualizarBala(){

    for(int i=balas.size()-1;i>=0;i--){
        Bala bala=balas.get(i);
        bala.moveBala();
        
        if(bala.getTransformY()<0){
           balas.remove(i);}
    }
 }

     // metodo de movimiento
  public void mover(int direccion){
    PVector pos=this.transform.getPosicion(); //reduce algo de codigo
    
    // almacenan la posicion de ambos lados
    float derecha=pos.x+velocidad*Time.getDeltaTime(frameRate); 
    float izquierda=pos.x-velocidad*Time.getDeltaTime(frameRate);
    
     if (direccion==0) {
       if(derecha<=width-100){
      transform.setPosicion(derecha,pos.y);} //establece el limite derecho
    }
    
    if (direccion==1) {  
       if(izquierda>=0){
      transform.setPosicion(izquierda,pos.y);} //establece el limite izquierdo
    }
    
    if(direccion==2){
      this.disparar();
    }
  
 }
 
  //metodos accesores
  public void setDireccion(int direccion) {
    this.direccion=direccion;
  }
  
  public ArrayList<Bala> getBalas(){
    return balas;
 }
  
}
