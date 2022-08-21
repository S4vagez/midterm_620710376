
class CeltoFah {
  double sum = 0;
  CeltoFah() {}
  double doConvert(double num) {
    sum = (num*9)/5+32;
    return sum;
  }
}

class FahtoCel {
  double sum = 0;
  FahtoCel() {}
  double doConvert(double num){
    sum = ((num-32)*5)/9;
    return sum;
  }
}

class KeltoCel {
  double sum = 0;
  KeltoCel() {}
  double doConvert(double num){
    sum = num-273.15;
    return sum;
  }
}

class CeltoKel {
  double sum = 0;
  CeltoKel() {}
  double doConvert(double num){
    sum = num+273.15;
    return sum;
  }
}

class FahtoKel {
  double sum = 0;
  FahtoKel() {}
  double doConvert(double num){
    sum = ((num+459.67)*5)/9;
    return sum;
  }
}

class KeltoFah {
  double sum = 0;
  KeltoFah() {}
  double doConvert(double num){
    sum = (num*9)/5-459.67;
    return sum;
  }
}

