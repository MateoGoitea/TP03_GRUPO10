class ImageComp{
  private PImage img;

   //constructor
  public ImageComp(String path){
  img=loadImage(path);
 } 
  
  //metodos accesores
  public void setImg(PImage img){
  this.img=img;
 }
  public PImage getImg(){
  return this.img;
 }
  
}
