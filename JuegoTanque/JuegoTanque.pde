private Tanque tanque;

public void setup(){
  size(600,600);
  tanque=new Tanque(width/2,height-100,200);
}

public void draw(){
background(0);
tanque.display(); //dibijo de prueba
}



public void keyPressed() {
  if (keyCode==RIGHT) {
    tanque.setDireccion(0);
  }
  if (keyCode==LEFT) {
    tanque.setDireccion(1);
  }
  if(key==' '){
  tanque.setDireccion(2);
  }
}
