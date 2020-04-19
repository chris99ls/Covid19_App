class DatoRegione {
  String data;
  String stato;
  int codiceRegione;
  String denominazioneRegione;
  double lat;
  double long;
  int ricoveratiConSintomi;
  int terapiaIntensiva;
  int totaleOspedalizzati;
  int isolamentoDomiciliare;
  int totalePositivi;
  int variazioneTotalePositivi;
  int nuoviPositivi;
  int dimessiGuariti;
  int deceduti;
  int totaleCasi;
  int tamponi;
  String noteIt;
  String noteEn;

  DatoRegione(
      {this.data,
      this.stato,
      this.codiceRegione,
      this.denominazioneRegione,
      this.lat,
      this.long,
      this.ricoveratiConSintomi,
      this.terapiaIntensiva,
      this.totaleOspedalizzati,
      this.isolamentoDomiciliare,
      this.totalePositivi,
      this.variazioneTotalePositivi,
      this.nuoviPositivi,
      this.dimessiGuariti,
      this.deceduti,
      this.totaleCasi,
      this.tamponi,
      this.noteIt,
      this.noteEn});

  DatoRegione.fromJson(Map<String, dynamic> json) {
    data = json['data'];
    stato = json['stato'];
    codiceRegione = json['codice_regione'];
    denominazioneRegione = json['denominazione_regione'];
    lat = json['lat'];
    long = json['long'];
    ricoveratiConSintomi = json['ricoverati_con_sintomi'];
    terapiaIntensiva = json['terapia_intensiva'];
    totaleOspedalizzati = json['totale_ospedalizzati'];
    isolamentoDomiciliare = json['isolamento_domiciliare'];
    totalePositivi = json['totale_positivi'];
    variazioneTotalePositivi = json['variazione_totale_positivi'];
    nuoviPositivi = json['nuovi_positivi'];
    dimessiGuariti = json['dimessi_guariti'];
    deceduti = json['deceduti'];
    totaleCasi = json['totale_casi'];
    tamponi = json['tamponi'];
    noteIt = json['note_it'];
    noteEn = json['note_en'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['data'] = this.data;
    data['stato'] = this.stato;
    data['codice_regione'] = this.codiceRegione;
    data['denominazione_regione'] = this.denominazioneRegione;
    data['lat'] = this.lat;
    data['long'] = this.long;
    data['ricoverati_con_sintomi'] = this.ricoveratiConSintomi;
    data['terapia_intensiva'] = this.terapiaIntensiva;
    data['totale_ospedalizzati'] = this.totaleOspedalizzati;
    data['isolamento_domiciliare'] = this.isolamentoDomiciliare;
    data['totale_positivi'] = this.totalePositivi;
    data['variazione_totale_positivi'] = this.variazioneTotalePositivi;
    data['nuovi_positivi'] = this.nuoviPositivi;
    data['dimessi_guariti'] = this.dimessiGuariti;
    data['deceduti'] = this.deceduti;
    data['totale_casi'] = this.totaleCasi;
    data['tamponi'] = this.tamponi;
    data['note_it'] = this.noteIt;
    data['note_en'] = this.noteEn;
    return data;
  }
}