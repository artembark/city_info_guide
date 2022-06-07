import 'package:equatable/equatable.dart';

import 'from_entity.dart';
import 'to_entity.dart';

class SearchEntity extends Equatable {
  final String? date;
  final ToEntity? to;
  final FromEntity? from;

  const SearchEntity({
    required this.date,
    required this.to,
    required this.from,
  });

  @override
  List<Object?> get props => [date, to, from];
}
