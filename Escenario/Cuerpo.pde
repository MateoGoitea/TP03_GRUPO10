private class Cuerpo {
  private ArrayList<Cuadrado> cuadrados;
  private PVector posicion;

  private int x;
  
  public Cuerpo(PVector posicion) {
    this.posicion=posicion;
    cuadrados=new ArrayList<Cuadrado>();
    cuadrados.add(new Cuadrado(new PVector(this.posicion.x-10, this.posicion.y), 20));
    
  }

  public void crecer(boolean isCollide) {
    if(isCollide==true){
      cuadrados.add(new Cuadrado(new PVector(this.posicion.x-10, this.posicion.y+(20*cuadrados.size())), 20));
      
      println(cuadrados.size());
    }
  }
  
  public void display(PVector newPosicion){
    
    for(x=0;x<cuadrados.size()-1;x++){
      
      Cuadrado cua=cuadrados.get(x);
      
      noStroke();
      fill(#21E82F);
      square(cua.getPosicion().x+newPosicion.x,cua.getPosicion().y+newPosicion.y, 20);
    }
  }
}
