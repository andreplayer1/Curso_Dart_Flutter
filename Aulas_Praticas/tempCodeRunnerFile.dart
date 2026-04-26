void main() {
  try{
    int resultado = 100 ~/ 0;
    print(resultado);
  } catch (e) {
    print(e.runtimeType);
  }
  print('Final');
}