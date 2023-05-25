class Produto {
  String? id;
  String? nome;
  String? descricao;
  double? preco;
  String? imagemUrl;

  Produto({this.id, this.nome, this.descricao, this.preco, this.imagemUrl});

  factory Produto.fromJson(Map<String, String> json) {
    return Produto(
        id: json["id"],
        nome: json["nome"],
        descricao: json["descricao"],
        preco: double.tryParse(json["preco"] ?? "0.0"),
        imagemUrl: json["imagemUrl"]);
  }
}
