// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class Tarefa {
  final String tarefa;
  bool concluida;
  bool assinada;

  Tarefa(
    this.tarefa,
    this.concluida,
    this.assinada,
  );
  void printarTarefa() {
    print("Tarefa: $tarefa");
  }
}
