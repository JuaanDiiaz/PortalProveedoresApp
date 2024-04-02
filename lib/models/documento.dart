import 'dart:convert';

class Documento {
    int documentoId;
    int userId;
    DateTime fechaSubida;
    String estado;
    String comentarioRechazo;
    String rutaArchivoXml;
    List<dynamic>? documentosAdjuntos;
    dynamic user;

    Documento({
        required this.documentoId,
        required this.userId,
        required this.fechaSubida,
        required this.estado,
        required this.comentarioRechazo,
        required this.rutaArchivoXml,
        this.documentosAdjuntos,
        required this.user,
    });

    factory Documento.fromRawJson(String str) => Documento.fromJson(json.decode(str));

    factory Documento.fromJson(Map<String, dynamic> json) => Documento(
        documentoId: json["documentoId"],
        userId: json["userId"],
        fechaSubida: DateTime.parse(json["fechaSubida"]),
        estado: json["estado"],
        comentarioRechazo: json["comentarioRechazo"],
        rutaArchivoXml: json["rutaArchivoXml"],
        documentosAdjuntos: List<dynamic>.from(json["documentosAdjuntos"].map((x) => x)),
        user: json["user"],
    );

}
