void setup() {
  test();
}

void test() {
  GrandNaturel n1 = new GrandNaturel(102);
  GrandNaturel n2 = new GrandNaturel(1999);
  assert n1.nbChiffres() == 3;
  assert n1.chiffre(0) == 2;
  assert n1.chiffre(1) == 0;
  assert n1.chiffre(2) == 1;
  
  // si la position n'est pas valide, le chiffre est considéré comme zéro
  assert n1.chiffre(3) == 0;
  assert n1.chiffre(-1) == 0;
  println("constructeur et accesseurs ok");

  GrandNaturel c = new  GrandNaturel(n1);
  assert c.toString().equals("102");
  println(" nombre 1 " +n1+ " nombre 2 " + c);
  println(""+n1.nbChiffres());
  println("" +n2.mult(5));

  println(fibo(10));
}


GrandNaturel fibo(int n) {
  if ( n==0) {
    
   GrandNaturel l = new  GrandNaturel(1); 
    for (int c= 0; c < l.nbChiffres(); c++) {
         l.chiffres[c]=0;
       }
    return l;
  } else if ( n==1) {
    return new  GrandNaturel(1);
  } else {
    
    GrandNaturel t = new  GrandNaturel(fibo(n-1));
     GrandNaturel h = new  GrandNaturel(fibo(n-2));
    
    return t.plus(h);
  }
  
  
}
