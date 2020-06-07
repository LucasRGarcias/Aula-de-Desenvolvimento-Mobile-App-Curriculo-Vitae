class PersonalData{
  
  final String cpf;
  final String foto;
  final String nome;
  final String resumo;

  PersonalData ({this.cpf, this.foto, this.nome, this.resumo});
  
  factory PersonalData.fromJson(Map<String, dynamic> json){

    return PersonalData(      
      cpf: json['cpf'],
      foto: json['foto'],
      nome: json['nome'],
      resumo: json['resumo']
    );
  }
}