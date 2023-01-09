void main(List<String> arguments) {

  List<String> listanomes = ['Mauricio','Ricardo','Joao'];
  print('Nomes: ${listanomes}!');

  List<dynamic> pessoa = [20, 'Mauricio', 1.65, true];
  print('Pessoa 1 - Nome: ${pessoa[1]}; Idade: ${pessoa[0]}; Altura ${pessoa[2]}; Cabelo preto? ${pessoa[3]}');
}
