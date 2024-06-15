class Muro{
private Transform transform;
private ImageComp img;
private Collider collider;
private int resistencia;

public Muro(float x, float y,int resistencia){
  this.transform=new Transform(x,y);
  this.collider=new Collider(x,y,200,100);
  this.resistencia=resistencia;
}

public void display(){
}

//metodos accesores
public int getResistencia(){
  return resistencia;
}
public void setResistencia(int resistencia){
     this.resistencia=resistencia;
}

}
