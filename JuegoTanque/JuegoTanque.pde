private Tanque tanque;
private GestorMurallas gestorMurallas;
private ImageComp imgTank;
private ImageComp imgMuro;
public void setup(){
  size(900,600);
  imgTank=new ImageComp("tanque.gif");
  tanque=new Tanque(width/2,height-100,200,imgTank);
  imgMuro=new ImageComp("muro.png");
  gestorMurallas=new GestorMurallas();
   
   for(int i=0;i<5;i++){  //genera los muros 
    gestorMurallas.agregarMuro(new Muro(i*180,100,int(random(10,30)),imgMuro));
   }
   for(int j=0;j<5;j++){
    gestorMurallas.agregarMuro(new Muro(j*180,180,int(random(10,30)),imgMuro));
  }
  
  
}

public void draw(){
background(0);
tanque.display(); //dibujo de prueba

gestorMurallas.verificarColision(tanque.getBalas()); // verifica constantemente si existe la colision

gestorMurallas.display(); //dibujo de prueba
tanque.actualizarBala(); //actualiza la posicion de la bala
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
