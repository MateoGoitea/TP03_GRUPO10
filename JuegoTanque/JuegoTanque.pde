private Tanque tanque;

public void setup(){
  size(600,600);
  generarTanque();
}

public void draw(){
background(0);
tanque.display();
}

public void generarTanque(){
  Transform transformTank= new Transform(new PVector(200,200));
  ImageComponent imageComponentTank= new ImageComponent("tanque.gif");
  tanque= new Tanque(transformTank,imageComponentTank);
}
