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
public void verificarCollision(ArrayList<Bala> balas){   
}


}
