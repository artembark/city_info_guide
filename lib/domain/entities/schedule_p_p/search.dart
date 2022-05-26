import 'package:meta/meta.dart';

import 'from.dart';
import 'to.dart';

class Search {
  String? date;
  To? to;
  From? from;

  Search({
    @required this.date,
    @required this.to,
    @required this.from,
  });
}
