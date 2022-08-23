
void main(){
  //Null safety é desabilitado pelo "?"
  String? nome;
  nome = "abc";
  print(nome!);
  nome = null;

  late String nome2;
  nome2 = "Willyan";
  print(nome2);
}