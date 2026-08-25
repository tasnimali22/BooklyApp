import 'package:equatable/equatable.dart';

class Pdf extends Equatable {
  final bool? isAvailable;

  const Pdf({this.isAvailable});

  factory Pdf.fromBookapu(Map<String, dynamic> json) =>
      Pdf(isAvailable: json['isAvailable'] as bool?);

  Map<String, dynamic> toBookapu() => {'isAvailable': isAvailable};

  @override
  List<Object?> get props => [isAvailable];
}
