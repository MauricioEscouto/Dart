
void main(List<String> arguments) {
  
  mostrarMadura("Uva", 10, cor: "Roxa");
                                   
  Fruta fruta1 = Fruta("uva", "roxa", 12, true);
  fruta1.estaMadura();

  Uva uva1 = Uva("uva", "verde", 12.2, false, true);
  
}
                                  //nomeados opcionais
mostrarMadura(String nome, int dias, {String? cor}) {
    if (cor != null) {
      print("A $nome é $cor");
    }
  }
                                        //parametros padroes
mostrarMadura1(String nome, int dias, {String cor = "sem cor"}) {
    print("A $nome é $cor");
  }

class Fruta {
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
}

class Uva extends Fruta{
  bool isAzedo;

  Uva (String nome, String cor, double peso, bool isMadura, this.isAzedo):super(nome, cor, peso, isMadura);
}
