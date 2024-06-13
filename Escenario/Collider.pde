private class Collider {

  private float radio;
  private PVector posCentro;

  public Collider(float radio, PVector posCentro) {
    this.radio=radio;
    this.posCentro=posCentro;
  }

  public boolean validarCollider(Collider otroCollider) {
    boolean isCollide = false;


    float distancia = this.posCentro.dist(otroCollider.getPosCentro());
    if (distancia<(this.radio + otroCollider.getRadio())) {
      isCollide = true;
    }

    return isCollide;
  }

  public PVector getPosCentro() {
    return this.posCentro;
  }

  public void setPosCentro(PVector posCentro) {
    this.posCentro=posCentro;
  }

  public float getRadio() {
    return this.radio;
  }
}
