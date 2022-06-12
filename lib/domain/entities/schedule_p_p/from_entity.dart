import 'package:equatable/equatable.dart';

class FromEntity extends Equatable {
  final String? code;
  final String? title;
  final String? stationType;
  final String? popularTitle;
  final String? shortTitle;
  final String? transportType;
  final String? stationTypeName;
  final String? type;

  const FromEntity({
    required this.code,
    required this.title,
    required this.stationType,
    required this.popularTitle,
    required this.shortTitle,
    required this.transportType,
    required this.stationTypeName,
    required this.type,
  });

  @override
  List<Object?> get props => [
        code,
        title,
        stationType,
        popularTitle,
        shortTitle,
        transportType,
        stationTypeName,
        type
      ];
}
