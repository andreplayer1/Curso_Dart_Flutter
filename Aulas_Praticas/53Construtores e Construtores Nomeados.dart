void main() {
  Personagem personagem1 = Personagem(
    nome: 'Kratos',
    classeRPG: 'Assassino',
    nivel: 99,
    pontosDeVida: 2000,
  );
  Personagem personagem2 = Personagem.novato(
    nome: 'Kiara',
    classeRPG: 'Mago'
  );
  personagem1.apresentacao();

  personagem1.guilda = 'Deuses do Olimpo';

  personagem1.gritoDeGuerra= 'POR ESPARTA!';

  personagem2.atacar(personagem1);
}

class Personagem {
  static const int nivelMaximo = 99;

  Personagem({required this.nome, required this.classeRPG, required int nivel, required double pontosDeVida})
  {
  this.nivel = nivel;
  this.pontosDeVida = pontosDeVida;

    print('CRIANDO PERSONAGEM: \n$nome \n$classeRPG \nNv. $_nivel \nVida: $_pontosDeVida',);
    print('********************');
  }

  Personagem.novato({required this.nome, required this.classeRPG,})
  {
    this.nivel = 1;
    this.pontosDeVida = 100.0;

    print(
      'CRIANDO PERSONAGEM: \n$nome \n$classeRPG \nNv. $_nivel \nVida: $_pontosDeVida',
    );
    print('********************');
  }

  String nome;
  String classeRPG;
  String ? guilda;
  int _nivel = 0;
  double _pontosDeVida = 0.0;

  late String gritoDeGuerra = 'POR ESPARTA!';

  void atacar(Personagem alvo) {
    String nomeGuilda = guilda ?? 'Lobo Solitário';  
    if (classeRPG == 'Mago') {
      double dano = 50.0 + _nivel;
      print(
        'O personagem $nome da Guilda $nomeGuilda atacou o oponente ${alvo.nome} com força de nivel $dano',
      );
      alvo.sofrerDano(dano);
    } else {
      double dano = 0.0 + _nivel;
      print(
        'O personagem $nome da guilda $nomeGuilda atacou o oponente ${alvo.nome} com força de nivel $dano',
      );
      alvo.sofrerDano(dano);
    }
  }

  void sofrerDano(double dano) {
    String nomeGuilda = guilda ?? 'Lobo Solitário';
    _pontosDeVida -= dano;
    print('$nome da guilda $nomeGuilda sofreu um ataque \nVida: $_pontosDeVida');
  }

  void apresentacao() {
    if(nome == 'Kratos'){
      print(gritoDeGuerra);
    }
  }

  double get pontosDeVida {
    return _pontosDeVida;
  }

  set pontosDeVida(double valor) {
    if (valor >= 0 && valor <= 9999) {
      _pontosDeVida = valor;
    } else {
      _pontosDeVida = 0;
    }
  } 

  int get nivel {
    return _nivel;
  }

  set nivel(int valorAtual) {
    if (valorAtual >= 1 && valorAtual <= nivelMaximo) {
      _nivel = valorAtual;
    } else {
      _nivel = 1;
    }
  }
}
