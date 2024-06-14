class ListaDeBalas{
private Bala balas;

 
  public void generarBalas(){
    Transform transformBala=new Transform(new PVector(15,height-40));
    Collider colliderBala=new Collider(transformBala,new PVector(10,20));
    balas=new Bala(transformBala,colliderBala);
 
  }
}
