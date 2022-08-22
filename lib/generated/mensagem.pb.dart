///
//  Generated code. Do not modify.
//  source: mensagem.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Msg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Msg', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mensagem')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numero', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Msg._() : super();
  factory Msg({
    $core.String? mensagem,
    $core.int? numero,
  }) {
    final _result = create();
    if (mensagem != null) {
      _result.mensagem = mensagem;
    }
    if (numero != null) {
      _result.numero = numero;
    }
    return _result;
  }
  factory Msg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Msg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Msg clone() => Msg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Msg copyWith(void Function(Msg) updates) => super.copyWith((message) => updates(message as Msg)) as Msg; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Msg create() => Msg._();
  Msg createEmptyInstance() => create();
  static $pb.PbList<Msg> createRepeated() => $pb.PbList<Msg>();
  @$core.pragma('dart2js:noInline')
  static Msg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Msg>(create);
  static Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get mensagem => $_getSZ(0);
  @$pb.TagNumber(1)
  set mensagem($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMensagem() => $_has(0);
  @$pb.TagNumber(1)
  void clearMensagem() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get numero => $_getIZ(1);
  @$pb.TagNumber(2)
  set numero($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNumero() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumero() => clearField(2);
}

