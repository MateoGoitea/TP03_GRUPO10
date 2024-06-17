class GestorMurallas{
  private ArrayList<Muro> muros;

    //inicializa el ArrayList de Muros
  public GestorMurallas(){
    muros=new ArrayList<Muro>();
 }
    //dibuja muros
  public void display(){
    for(Muro muro:muros){
    muro.display();}
 }
    //añade muros dentro del ArrayList
  public void agregarMuro(Muro muro){ 
    muros.add(muro);
 }
   //recibe la lista de balas y verificara si colisionan o no
  public void verificarColision(ArrayList<Bala> balas){   
    
    for(int i=balas.size()-1; i >= 0; i--){
        Bala bala=balas.get(i);
        
        for(int j=muros.size()-1; j>=0 ; j--){
            Muro muro=muros.get(j);
            
            if(muro.colisiona(bala)){
               muro.setResistencia(muro.getResistencia()-10);
     
               if(muro.getResistencia()<=0){  //elimina el muro una vez acabe su resistencia
                  muros.remove(j);
               }
               balas.remove(i);  //elimina las balas una vez colisionan
               break;
               }
       }
    }
  }
}
