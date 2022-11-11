// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dados_motoristas_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DadosMotoristasRecord> _$dadosMotoristasRecordSerializer =
    new _$DadosMotoristasRecordSerializer();

class _$DadosMotoristasRecordSerializer
    implements StructuredSerializer<DadosMotoristasRecord> {
  @override
  final Iterable<Type> types = const [
    DadosMotoristasRecord,
    _$DadosMotoristasRecord
  ];
  @override
  final String wireName = 'DadosMotoristasRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DadosMotoristasRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nome;
    if (value != null) {
      result
        ..add('nome')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.placa;
    if (value != null) {
      result
        ..add('placa')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.observacao;
    if (value != null) {
      result
        ..add('observacao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dataEHora;
    if (value != null) {
      result
        ..add('data-e-hora')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  DadosMotoristasRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DadosMotoristasRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nome':
          result.nome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'placa':
          result.placa = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'observacao':
          result.observacao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'data-e-hora':
          result.dataEHora = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$DadosMotoristasRecord extends DadosMotoristasRecord {
  @override
  final String? nome;
  @override
  final String? placa;
  @override
  final String? status;
  @override
  final String? observacao;
  @override
  final DateTime? dataEHora;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DadosMotoristasRecord(
          [void Function(DadosMotoristasRecordBuilder)? updates]) =>
      (new DadosMotoristasRecordBuilder()..update(updates))._build();

  _$DadosMotoristasRecord._(
      {this.nome,
      this.placa,
      this.status,
      this.observacao,
      this.dataEHora,
      this.ffRef})
      : super._();

  @override
  DadosMotoristasRecord rebuild(
          void Function(DadosMotoristasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DadosMotoristasRecordBuilder toBuilder() =>
      new DadosMotoristasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DadosMotoristasRecord &&
        nome == other.nome &&
        placa == other.placa &&
        status == other.status &&
        observacao == other.observacao &&
        dataEHora == other.dataEHora &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, nome.hashCode), placa.hashCode),
                    status.hashCode),
                observacao.hashCode),
            dataEHora.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DadosMotoristasRecord')
          ..add('nome', nome)
          ..add('placa', placa)
          ..add('status', status)
          ..add('observacao', observacao)
          ..add('dataEHora', dataEHora)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DadosMotoristasRecordBuilder
    implements Builder<DadosMotoristasRecord, DadosMotoristasRecordBuilder> {
  _$DadosMotoristasRecord? _$v;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  String? _placa;
  String? get placa => _$this._placa;
  set placa(String? placa) => _$this._placa = placa;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _observacao;
  String? get observacao => _$this._observacao;
  set observacao(String? observacao) => _$this._observacao = observacao;

  DateTime? _dataEHora;
  DateTime? get dataEHora => _$this._dataEHora;
  set dataEHora(DateTime? dataEHora) => _$this._dataEHora = dataEHora;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DadosMotoristasRecordBuilder() {
    DadosMotoristasRecord._initializeBuilder(this);
  }

  DadosMotoristasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _placa = $v.placa;
      _status = $v.status;
      _observacao = $v.observacao;
      _dataEHora = $v.dataEHora;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DadosMotoristasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DadosMotoristasRecord;
  }

  @override
  void update(void Function(DadosMotoristasRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DadosMotoristasRecord build() => _build();

  _$DadosMotoristasRecord _build() {
    final _$result = _$v ??
        new _$DadosMotoristasRecord._(
            nome: nome,
            placa: placa,
            status: status,
            observacao: observacao,
            dataEHora: dataEHora,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
