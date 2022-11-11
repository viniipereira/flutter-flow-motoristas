import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'dados_motoristas_record.g.dart';

abstract class DadosMotoristasRecord
    implements Built<DadosMotoristasRecord, DadosMotoristasRecordBuilder> {
  static Serializer<DadosMotoristasRecord> get serializer =>
      _$dadosMotoristasRecordSerializer;

  String? get nome;

  String? get placa;

  String? get status;

  String? get observacao;

  @BuiltValueField(wireName: 'data-e-hora')
  DateTime? get dataEHora;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DadosMotoristasRecordBuilder builder) =>
      builder
        ..nome = ''
        ..placa = ''
        ..status = ''
        ..observacao = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dados-motoristas');

  static Stream<DadosMotoristasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DadosMotoristasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DadosMotoristasRecord._();
  factory DadosMotoristasRecord(
          [void Function(DadosMotoristasRecordBuilder) updates]) =
      _$DadosMotoristasRecord;

  static DadosMotoristasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDadosMotoristasRecordData({
  String? nome,
  String? placa,
  String? status,
  String? observacao,
  DateTime? dataEHora,
}) {
  final firestoreData = serializers.toFirestore(
    DadosMotoristasRecord.serializer,
    DadosMotoristasRecord(
      (d) => d
        ..nome = nome
        ..placa = placa
        ..status = status
        ..observacao = observacao
        ..dataEHora = dataEHora,
    ),
  );

  return firestoreData;
}
