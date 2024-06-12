private class Collider {

  private float radio;
  private PVector posCentro;

  public Collider(float radio, PVector posCentro) {
    radio=this.radio;
    posCentro=this.posCentro;
  }

  public boolean validarCollider(Collider otroCollider) {
    boolean isCollide = false;

    float distancia = this.posCentro.dist(otroCollider.getPosCentro());
    if (distancia<(this.radio+otroCollider.getRadio())) {
      isCollide = true;
    }

    return isCollide;
  }

  public PVector getPosCentro() {
    return this.posCentro;
  }

  public float getRadio() {
    return this.radio;
  }
}
