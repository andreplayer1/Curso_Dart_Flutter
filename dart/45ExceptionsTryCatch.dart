void main() {
  try{
    int resultado = 100 ~/ 2;
    print(resultado);

    double valor = double.parse('50.2a');
    print(valor);
  } on UnsupportedError {
    print('Caiu aqui!');
  } on FormatException catch (e){
    print('Caiu no Format Exception ${e}');
  } catch (e) {
    print(e);
  } finally {
    print('Final');
  }
}