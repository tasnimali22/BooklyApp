import 'package:equatable/equatable.dart';

import 'item.dart';

class BookModel extends Equatable {
  final String? kind;
  final int? totalItems;
  final List<Item>? items;

  const BookModel({this.kind, this.totalItems, this.items});

  factory BookModel.fromBookapu(Map<String, dynamic> json) => BookModel(
    kind: json['kind'] as String?,
    totalItems: json['totalItems'] as int?,
    items: (json['items'] as List<dynamic>?)
        ?.map((e) => Item.fromBookapu(e as Map<String, dynamic>))
        .toList(),
  );

  Map<String, dynamic> toBookapu() => {
    'kind': kind,
    'totalItems': totalItems,
    'items': items?.map((e) => e.toBookapu()).toList(),
  };

  @override
  List<Object?> get props => [kind, totalItems, items];
}
