import 'package:equatable/equatable.dart';

class TransportSubtypeEntity extends Equatable {
  final dynamic color;
  final dynamic code;
  final dynamic title;

  const TransportSubtypeEntity({
    required this.color,
    required this.code,
    required this.title,
  });

  @override
  List<Object?> get props => [color, code, title];
}
