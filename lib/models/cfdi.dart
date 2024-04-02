
import 'dart:convert';

class Cfdi{
  String? emisorRFC;
  String? receptorRFC;
  String? certificado;
  String? sello;
  String? total;
  String? subtotal;
  String? version;
  String? serie;
  String? folio;
  String? fecha;
  String? tipo;
  String? uuid;
  String? estatus;

  Cfdi({
    this.emisorRFC,
    this.receptorRFC,
    this.certificado,
    this.sello,
    this.total,
    this.subtotal,
    this.version,
    this.serie,
    this.folio,
    this.fecha,
    this.tipo,
    this.uuid,
    this.estatus
  });

  factory Cfdi.fromRawJson(String str) => Cfdi.fromJson(json.decode(str));

  factory Cfdi.fromJson(Map<String, dynamic> json) => Cfdi(
    emisorRFC: json['emisorRFC'],
    receptorRFC: json['receptorRFC'],
    certificado: json['certificado'],
    sello: json['sello'],
    total: json['total'],
    subtotal: json['subtotal'],
    version: json['version'],
    serie: json['serie'],
    folio: json['folio'],
    fecha: json['fecha'],
    tipo: json['tipo'],
    uuid: json['uuid'],
    estatus: json['estatus']
  );
}