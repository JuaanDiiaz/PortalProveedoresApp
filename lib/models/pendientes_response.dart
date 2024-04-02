import 'dart:convert';
import 'package:portal_proveedores/models/models.dart';


class PendientesResponse {
    Documento documento;
    Cfdi cfdi;

    PendientesResponse({
        required this.documento,
        required this.cfdi,
    });

    factory PendientesResponse.fromRawJson(String str) => PendientesResponse.fromJson(json.decode(str));

    factory PendientesResponse.fromJson(Map<String, dynamic> json) => PendientesResponse(
        documento: Documento.fromJson(json["documento"]),
        cfdi: Cfdi.fromJson(json["cfdi"]),
    );
}
