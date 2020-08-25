import 'package:tuple/tuple.dart';

extension SortTuples on List<Tuple2> {
  void sortTuples() {
    for (var j = 0; j < this.length - 1; j++) {
      for (var i = 0; i < this.length - 1; i++) {
        if (this[i].item1 > this[i + 1].item1) {
          var x = this[i];
          this[i] = this[i + 1];
          this[i + 1] = x;
        }
      }
    }
  }
}
