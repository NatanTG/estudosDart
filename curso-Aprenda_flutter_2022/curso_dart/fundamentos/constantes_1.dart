import 'dart:io';

void main() {
  //Área da circuferencia = PI * raio * raio

  final PI = 3.1415;

  stdout.write("Informe o raio: ");
  final entradaDeUsuario = stdin.readLineSync();
  final double raio = double.parse(entradaDeUsuario!);

  var area = PI * raio * raio;

  print("O valor do raio é: " + area.toString());
}
