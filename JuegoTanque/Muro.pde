class Muro{
  private Transform transform;
  private ImageComp img;
  private Collider collider;
  private int resistencia;

      //constructor
  public Muro(float x, float y,int resistencia,ImageComp img){
    this.transform=new Transform(x,y);
    this.collider=new Collider(x,y,200,100);
    this.img=img;
    this.resistencia=resistencia;
 }

      //metodo de dibujo
  public void display(){
    image(this.img.getImg(),this.transform.getPosicion().x,this.transform.getPosicion().y+10,200,80);
 }

      //metodo que detecta la colision
  public boolean colisiona(Bala bala){
    return collider.verificarColision(bala.getCollider());
 }

     //metodos accesores
  public int getResistencia(){
    return resistencia;
 }
  public void setResistencia(int resistencia){
    this.resistencia=resistencia;
 }

}
