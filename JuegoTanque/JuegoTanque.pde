private Tanque tanque;

public void setup(){
  size(600,600);
  
}

public void draw(){
background(0);

}



public void keyPressed() {
  if (keyCode==RIGHT) {
    tanque.setDireccion(0);
  }
  if (keyCode==LEFT) {
    tanque.setDireccion(1);
  }
}
