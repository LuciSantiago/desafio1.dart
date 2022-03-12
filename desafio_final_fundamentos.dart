void main() {
  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  //! Baseado no array acima monte um relatório onde:
  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
  print('1 - Apresente os pacientes com mais de 20 anos e print o nome deles');
  for (var paciente in pacientes) {
    var pacienteDados = paciente.split('|');
    int idade = int.tryParse(pacienteDados[1]) ?? 0;
    if (idade > 20) {
      print(pacienteDados[0]);
    }
  }
  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  print(
      '2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)');

  var desenvolvedores = [];
  var estudantes = [];
  var dentista = [];
  var jornalista = [];

  for (var paciente in pacientes) {
    var pacientesDados = paciente.split('|');
    var profissao = pacientesDados[2];

    switch (profissao.toLowerCase()) {
      case 'desenvolvedor':
        desenvolvedores.add(profissao);
        break;
      case 'estudante':
        estudantes.add(profissao);
        break;
      case 'dentista':
        dentista.add(profissao);
        break;
      case 'jornalista':
        jornalista.add(profissao);
        break;
      default:
        print('Sem profissão');
    }
  }
  print('Desenvolvedores: ${desenvolvedores.length}');
  print('Estudantes: ${estudantes.length}');
  print('Dentista: ${dentista.length}');
  print('Jornalista: ${jornalista.length}');

  //! 3 - Apresente a quantidade de pacientes que moram em SP
  print('3 - Apresente a quantidade de pacientes que moram em SP');

  var estadoSp = [];

  for (var paciente in pacientes) {
    var pacienteDados = paciente.split('|');
    var estado = pacienteDados.last;

    if (estado.toLowerCase() == 'sp') {
      estadoSp.add(estado);
    }
  }
  
  print('A quantidade de pessoas que moram em São Paulo é: ${estadoSp.length}');
}
