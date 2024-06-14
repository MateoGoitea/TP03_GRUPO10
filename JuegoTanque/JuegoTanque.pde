private Tanque tanque;
private ListaDeBalas list;

public void setup(){
  size(600,600);
  generarTanque();
  list=new ListaDeBalas();
}

public void draw(){
background(0);
tanque.display();
list.generarBalas();//prueba de dibujo
}

public void generarTanque(){
  Transform transformTank= new Transform(new PVector(width/2,height-100));
  ImageComponent imageComponentTank= new ImageComponent("tanque.gif");
  tanque= new Tanque(transformTank,imageComponentTank,200);
}
public void keyPressed() {
  if (keyCode==RIGHT) {
    tanque.setDireccion(0);
  }
  if (keyCode==LEFT) {
    tanque.setDireccion(1);
  }
}
