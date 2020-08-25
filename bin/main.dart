import 'package:tuple/tuple.dart';
import 'package:t/sortTuples.dart';
import 'dart:io';

void main(List<String> arguments) {
  var validTvs = 2;
  var conShows = 0;
  List<Tuple2> shows = List<Tuple2>();

  var n = int.parse(stdin.readLineSync());

  for (var i = 0; i < n; i++) {
    var l = int.parse(stdin.readLineSync());
    var r = int.parse(stdin.readLineSync());
    var t = Tuple2(l, r);
    shows.add(t);
  }
  shows.sortTuples();

  for (var i = 0; i < shows.length - 1; i++) {
    if (shows[i].item2 == shows[i + 1].item1) {
      validTvs--;
    }
    if (shows[i] == shows[i + 1]) {
      conShows++;
    }
  }

  if (validTvs <= 1 && conShows >= 2 || conShows >= 3) {
    print('No');
  } else {
    print('Yes');
  }
}

// void sortTuples(List<Tuple2> shows) {
//   for (var j = 0; j < shows.length - 1; j++) {
//     for (var i = 0; i < shows.length - 1; i++) {
//       if (shows[i].item1 > shows[i + 1].item1) {
//         var x = shows[i];
//         shows[i] = shows[i + 1];
//         shows[i + 1] = x;
//       }
//     }
//   }
// }
