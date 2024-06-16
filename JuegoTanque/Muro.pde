class Muro{
private Transform transform;
private ImageComp img;
private Collider collider;
private int resistencia;

public Muro(float x, float y,int resistencia,ImageComp img){
  this.transform=new Transform(x,y);
  this.collider=new Collider(x,y,200,100);
  this.img=img;
  this.resistencia=resistencia;
}
//de momento se dibuja con primitivas
public void display(){
  //fill(255);
  //rect(transform.getPosicion().x,transform.getPosicion().y,200,100);
  image(this.img.getImg(),this.transform.getPosicion().x-10,this.transform.getPosicion().y+10,200,80);
}

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
