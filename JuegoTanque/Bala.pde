class Bala{
  private Collider collider;
  private Transform transform;
  public Bala(Transform transform,Collider collider){
    this.collider=collider;
    this.transform=transform;
    // forma y color de la bala
    noStroke();
    fill(#EAE418);
    rect(this.transform.getPosicion().x,this.transform.getPosicion().y,10,20);
  }
}
