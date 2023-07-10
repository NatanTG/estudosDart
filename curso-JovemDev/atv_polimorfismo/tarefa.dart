abstract class Tarefa {
  String descricao;
  bool concluida;
  String usuario;

  Tarefa(this.descricao, this.concluida, this.usuario);

  void exibirDescricao() {
    print('Descrição: $descricao');
    print('Concluída: $concluida');
    print('Assinada por: $usuario');
    print('---');
  }
}

class TarefaAssinada extends Tarefa {
  String assinante;

  TarefaAssinada(String descricao, String usuario, this.assinante)
      : super(descricao, false, usuario);

  void assinarTarefa(String novoAssinante) {
    assinante = novoAssinante;
  }
}

class TarefaNova extends Tarefa {
  TarefaNova(String descricao, String usuario)
      : super(descricao, false, usuario);
}

class TarefaFinalizada extends Tarefa {
  TarefaFinalizada(String descricao, String usuario)
      : super(descricao, true, usuario);
}
