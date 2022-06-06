import 'from_entity.dart';
import 'to_entity.dart';

class SearchEntity {
  String? date;
  ToEntity? to;
  FromEntity? from;

  SearchEntity({
    required this.date,
    required this.to,
    required this.from,
  });
}
