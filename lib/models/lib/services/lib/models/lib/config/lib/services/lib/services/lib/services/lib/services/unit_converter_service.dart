class UnitConverterService {
  double hectaresToKm2(double hectares) {
    return hectares / 100;
  }

  double hectaresToAlqueireMineiro(double hectares) {
    return hectares / 4.84;
  }

  double hectaresToAlqueirePaulista(double hectares) {
    return hectares / 2.42;
  }
}
