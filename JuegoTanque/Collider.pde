class Collider{
private Transform transform;
private PVector tamaño;


  public Collider(Transform transform,PVector tamaño){
  this.transform=transform;
  this.tamaño=tamaño;
  //dibujo de prueba del collider
  fill(255);  
  rect(this.transform.getPosicion().x,this.transform.getPosicion().y,this.getTamaño().x,this.getTamaño().y);
}
public void verificarColision(Collider otroCollider){

}
public PVector getTamaño(){
return this.tamaño;}
}
