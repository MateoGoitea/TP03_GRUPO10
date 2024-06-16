class ImageComp{
  private PImage img;

   // se redujo a un costructor de momento y se buscara su implementacion más adelante
  public ImageComp(String path){
  img=loadImage(path);
} 
  
  //metodos accesores
  public void setImg(PImage img){
  this.img=img;
}
  public PImage getImg(){
  return this.img;}
  
}
