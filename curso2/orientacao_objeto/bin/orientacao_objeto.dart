
void main(List<String> arguments) {
  
  mostrarMadura("Uva", 10, cor: "Roxa");
                                   
  Fruta fruta1 = Fruta("uva", "roxa", 12, true);
  fruta1.estaMadura();

  Uva uva1 = Uva("uva", "verde", 12.2, false, true);
  uva1.fazerMassa();
}
                                  //nomeados opcionais
void mostrarMadura(String nome, int dias, {String? cor}) {
    if (cor != null) {
      print("A $nome é $cor");
    }
  }
                                        //parametros padroes
void mostrarMadura1(String nome, int dias, {String cor = "sem cor"}) {
    print("A $nome é $cor");
  }

class Fruta implements Bolo{
  String nome;
  String cor;
  double peso;
  bool isMadura;

  Fruta (this.nome, this.cor, this.peso, this.isMadura);

  void estaMadura () {
    if (isMadura == true) {
      print("A fruta está madura");
    }
  }
  
  @override
  void assar() {
    print('catar a fruta');
  }
  
  @override
  void fazerMassa() {
    print('misturar a fruta com farinha');
  }
  
  @override
  void separarIngredientes() {
    print('assar o bolo');
  }
}

class Uva extends Fruta{
  bool isAzedo;

  Uva (String nome, String cor, double peso, bool isMadura, this.isAzedo):super(nome, cor, peso, isMadura);

  @override
  void fazerMassa() {
    print('\nTirar a casca e misturar com farinha');
    super.fazerMassa();
  }
}

abstract class Bolo {
  void separarIngredientes();
  void fazerMassa();
  void assar();
}
