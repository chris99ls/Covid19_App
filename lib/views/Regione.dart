class Regione {
  int id;
  String name;

  Regione(this.id, this.name);

  static List<Regione> getRegioni() {
    return <Regione>[
      Regione(1, 'Piemonte'),
      Regione(2, 'Valle D\'aosta'),
      Regione(3, 'Lombardia'),
      Regione(5, 'Veneto'),
      Regione(6, 'Friuli Venezia Giulia'),
      Regione(7, 'Liguria'),
      Regione(8, 'Emilia-Romagna'),
      Regione(9, 'Toscana'),
      Regione(10, 'Umbria'),
      Regione(11, 'Marche'),
      Regione(12, 'Lazio'),
      Regione(13, 'Abruzzo'),
      Regione(14, 'Molise'),
      Regione(15, 'Campania'),
      Regione(16, 'Puglia'),
      Regione(17, 'Basilicata'),
      Regione(18, 'Calabria'),
      Regione(19, 'Sicilia'),
      Regione(20, 'Sardegna'),
    ];
  }
}
