import 'dart:math';

import 'tarefa.dart';

List<Tarefa> gerarListaTarefas() {
  List<String> descricoes = [
    'Fazer compras',
    'Estudar para a prova',
    'Preparar apresentação',
    'Lavar o carro',
    'Limpar a casa',
    'Resolver pendências',
    'Fazer exercícios',
    'Assistir a um filme',
    'Ler um livro',
    'Organizar o armário'
  ];

  List<Tarefa> tarefas = [];

  Random random = Random();

  int numTarefas = random.nextInt(6) + 5;

  for (int i = 0; i < numTarefas; i++) {
    int tipo = random.nextInt(3);

    String descricao = descricoes[random.nextInt(descricoes.length)];
    String usuario = 'Usuário ${random.nextInt(5) + 1}';

    switch (tipo) {
      case 0:
        tarefas.add(TarefaAssinada(descricao, usuario, ''));
        break;
      case 1:
        tarefas.add(TarefaNova(descricao, usuario));
        break;
      case 2:
        tarefas.add(TarefaFinalizada(descricao, usuario));
        break;
    }
  }

  return tarefas;
}

void main() {
  List<Tarefa> tarefas = gerarListaTarefas();

  for (var tarefa in tarefas) {
    tarefa.exibirDescricao();
  }
}
