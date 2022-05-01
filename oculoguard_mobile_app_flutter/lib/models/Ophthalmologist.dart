/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Ophthalmologist type in your schema. */
@immutable
class Ophthalmologist extends Model {
  static const classType = const _OphthalmologistModelType();
  final String id;
  final String? _name;
  final List<User>? _Users;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get name {
    return _name;
  }
  
  List<User>? get Users {
    return _Users;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Ophthalmologist._internal({required this.id, name, Users, createdAt, updatedAt}): _name = name, _Users = Users, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Ophthalmologist({String? id, String? name, List<User>? Users}) {
    return Ophthalmologist._internal(
      id: id == null ? UUID.getUUID() : id,
      name: name,
      Users: Users != null ? List<User>.unmodifiable(Users) : Users);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ophthalmologist &&
      id == other.id &&
      _name == other._name &&
      DeepCollectionEquality().equals(_Users, other._Users);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Ophthalmologist {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Ophthalmologist copyWith({String? id, String? name, List<User>? Users}) {
    return Ophthalmologist._internal(
      id: id ?? this.id,
      name: name ?? this.name,
      Users: Users ?? this.Users);
  }
  
  Ophthalmologist.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _Users = json['Users'] is List
        ? (json['Users'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => User.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'Users': _Users?.map((User? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "ophthalmologist.id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField USERS = QueryField(
    fieldName: "Users",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (User).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Ophthalmologist";
    modelSchemaDefinition.pluralName = "Ophthalmologists";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Ophthalmologist.NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Ophthalmologist.USERS,
      isRequired: false,
      ofModelName: (User).toString(),
      associatedKey: User.OPHTHALMOLOGISTID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _OphthalmologistModelType extends ModelType<Ophthalmologist> {
  const _OphthalmologistModelType();
  
  @override
  Ophthalmologist fromJson(Map<String, dynamic> jsonData) {
    return Ophthalmologist.fromJson(jsonData);
  }
}