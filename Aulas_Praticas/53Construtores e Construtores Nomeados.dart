void main() {
  Personagem personagem1 = Personagem(
    nome: 'Kratos',
    classeRPG: 'Assassino',
    nivel: 50,
    pontosDeVida: 2000,
  );
  Personagem personagem2 = Personagem.novato(
    nome: 'Kiara', 
    classeRPG: 'Mago', 
    nivel: 25);
  personagem2.atacar(personagem1);
}

class Personagem {

  Personagem({required this.nome,required this.classeRPG,required this.nivel,required this.pontosDeVida,}) {
    print('CRIANDO PERSONAGEM: \n$nome \n$classeRPG \nNv. $nivel \nVida: $pontosDeVida');
    print('********************');
  }

  Personagem.novato({required this.nome, required this.classeRPG, this.pontosDeVida = 100, this.nivel = 1}) {
    print('CRIANDO PERSONAGEM: \n$nome \n$classeRPG \nNv. $nivel \nVida: $pontosDeVida');
    print('********************');
  }

  String nome;
  String classeRPG;
  int nivel = 0;
  double pontosDeVida = 0;

  void atacar(Personagem alvo) {
    if (classeRPG == 'Mago') {
      double dano = 50.0 + nivel;
      print('O personagem $nome atacou o oponente ${alvo.nome} com força de nivel $dano');
      alvo.sofrerDano(dano);
    } else {
      double dano = 0.0 + nivel;
      print('O personagem $nome atacou o oponente ${alvo.nome} com força de nivel $dano');
      alvo.sofrerDano(dano);
    }
  }

  void sofrerDano(double dano) {
    pontosDeVida -= dano;
    print('$nome sofreu um ataque \nVida: $pontosDeVida');
  }
}
