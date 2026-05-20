void main (){
  Personagem personagem1 = Personagem(nome: 'Kratos', classeRPG: 'Assassino', nivel: 100, pontosDeVida: 100);
  Personagem personagem2 = Personagem.novato(nome: 'Kiara', classeRPG: 'Mago');
  print(personagem2.nome);
  print(personagem2.classeRPG);
  print(personagem2.pontosDeVida);
  personagem2.atacar();
}

class Personagem {

  Personagem({required this.nome, required this.classeRPG, required this.nivel, required this.pontosDeVida});

  Personagem.novato({required this.nome, required this.classeRPG}){
    pontosDeVida = 100;
    nivel = 1;
  }

  String nome;
  String classeRPG;
  int nivel = 0;
  double pontosDeVida = 0;

  void atacar(){
    if(classeRPG == 'Mago'){
      double dano = 50.0 + nivel;
    print('O personagem $nome atacou com força de nivel $dano');
    } else {
      double dano = 0.0 + nivel;
      print('O personagem $nome atacou com força de nivel $dano');
      }
  }

  void sofrerDano(double dano){

  }
}