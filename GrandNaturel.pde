class GrandNaturel {
  int[] chiffres; // chifres décimaux du moins au plus significatif

  GrandNaturel(int c) {
  assert c > 0 : 
    "on ne représente que les nombres positifs";
    int nbChiffres = 0;
    for (int c1 = c; c1 > 0; c1 /= 10) {
      nbChiffres++;
    }
    chiffres = new int[nbChiffres];
    // et on le rmplit
    for (int i = 0; i < nbChiffres; i++) {
      chiffres[i] = c % 10;
      c /= 10;
    }
  }


  GrandNaturel(GrandNaturel n) {
    chiffres = n.chiffres;
    for (int i = 0; i < chiffres.length; i++) {
      this.chiffres[i] = n.chiffres[i];
    }
  }

  int nbChiffres() {
    return chiffres.length;
  }

  int chiffre(int k) {
    if (k > chiffres.length-1|| k <0) {
      return 0;
    }
    return chiffres[k];
  }

  boolean egal(GrandNaturel n) {
    boolean egal = true;
    if (this.nbChiffres() != n.nbChiffres()) {
      return false;
    } else {

      int i =0;
      while ( i < nbChiffres() && egal == true) {
        if (chiffre(i)!= n.chiffre(i)) {
          egal=false;
        }
        i++;
      }
    }
    return egal;
  }

  boolean inf(GrandNaturel n) {
    boolean inf = true;
    if (this.nbChiffres() < n.nbChiffres()) {
      inf = true;
    } else if (this.nbChiffres() > n.nbChiffres()) {
      inf = false;
    } else {
      int i =nbChiffres() -1 ;
      while ( i > 0 && chiffre(i)==n.chiffre(i)) {
        i--;
      }
      if (chiffre(i) < n.chiffre(i)) {
        return inf;
      } else  if (chiffre(i) >= n.chiffre(i)) {
        return !inf;
      }
    }
    return inf;
  }





  boolean sup(GrandNaturel n) {
    boolean sup = true;
    if (this.nbChiffres() > n.nbChiffres()) {
      sup = true;
    } else if (this.nbChiffres() < n.nbChiffres()) {
      sup = false;
    } else {
      int i =nbChiffres() -1 ;
      while ( i > 0 && chiffre(i)==n.chiffre(i)) {
        i--;
      }
      if (chiffre(i) > n.chiffre(i)) {
        return sup;
      } else  if (chiffre(i) <= n.chiffre(i)) {
        return !sup;
      }
    }
    return sup;
  }


  void normaliser() {
    int retenue = 0;
    // on sépare chaque chifre en dizaines et unités et on distribue
    // les dizaines vers le chiffre suivant
    for (int i = 0; i < chiffres.length; i++) {
      chiffres[i] += retenue;
      retenue = chiffres[i] / 10;
      chiffres[i] %= 10;
    }
    // s'il restre quelque chose à la fin, on l'ajoute
    if (retenue > 0) {
      GrandNaturel r = new GrandNaturel(retenue);
      chiffres = concat(chiffres, r.chiffres);
    }
  }

  GrandNaturel plus(int c) {
  assert c >= 0 : 
    "c ne peut pas être négatif"; 
    GrandNaturel resultat = new GrandNaturel(this);
    resultat.chiffres[0] += c;
    resultat.normaliser();
    return resultat;
  }
  GrandNaturel plus(GrandNaturel n) {

    GrandNaturel resultat = new GrandNaturel(this);

    if (this.nbChiffres() == n.nbChiffres()) {
      for (int i = 0; i < resultat.nbChiffres(); i++) {
        resultat.chiffres[i] += n.chiffres[i] ;
      }
    } else if (this.nbChiffres() > n.nbChiffres()) {
      for (int i = 0; i < n.nbChiffres(); i++) {
        resultat.chiffres[i] += n.chiffres[i] ;
      }
    } else if (this.nbChiffres() < n.nbChiffres()) {
      int i=0;
      while (i < n.nbChiffres()) {
        if ( i < resultat.nbChiffres()) {
          resultat.chiffres[i] += n.chiffres[i] ;
          i++;
        } else {

          resultat.chiffres = append(resultat.chiffres, n.chiffres[i]);
          i++;
        }
      }
    }

    resultat.normaliser();

    return resultat;
  }


  GrandNaturel mult(int c) {
  assert c >= 0 : 
    "c ne peut pas être négatif"; 
    GrandNaturel resultat = new GrandNaturel(this);
    for (int i = 0; i < resultat.nbChiffres(); i++) {
      resultat.chiffres[i] *= c;
    }
    resultat.normaliser();
    return resultat;
  }
  
  String toString() {
    String t = "";

    for (int i = chiffres.length - 1; i>=0; i--) {
      t+=""+chiffres[i];
    }
    return t;
  }

}
