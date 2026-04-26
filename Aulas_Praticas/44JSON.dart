import 'dart:convert';

void main() {
  Map<String, dynamic> dados = json.decode(dadosDoUsuario());
  print(dados['endereço']['cidade']);
}

String dadosDoUsuario() {
  return """
  {
  "nome": "André",
  "sobrenome": "Barbosa",
  "idade": "31",
  "casado": true,
  "altura": 1.70,
  "cursos": [
    {
      "nome": "Dart",
      "dificuldade": 1
    },
    {
      "nome": "Flutter",
      "dificuldade": 3
    },
    {
      "nome": "Web",
      "dificuldade": 2
    },
    {
      "nome": "Python",
      "dificuldade": 1
    }
  ],
  "endereço": {
    "rua": "Helena Magalhães",
    "numero": 19,
    "bairro": "Castelo Branco",
    "cidade": "Salvador",
    "estado": "Bahia",
    "pais": "Brasil"
  }
}
""";
}