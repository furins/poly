import 'package:poly/poly.dart';

void main() {
  var correct_count = 0;
  var exception_count = 0;

  //1. Correct casting
  // * casting `List<dynamic> to `List<num>`
  var correctDynamicList = [1, 2];
  var correctPointFromDynamicList = toPoint(correctDynamicList.cast<num>());
  print(
      '${++correct_count}. Type of correctPointFromDynamicList is ${correctPointFromDynamicList.runtimeType}, while correctDynamicList was ${correctDynamicList.runtimeType} \t //See casting worked as desired');

  // * casting `List<dynamic>` to `List<List<num>>`
  var correctDynamicListOfList = [
    [1, 2],
    [3, 4]
  ];
  var listPointFromDynamicList = toListOfPoint(correctDynamicListOfList.cast<List<num>>());
  print(
      '${++correct_count}. Type of listPointFromDynamicList is ${listPointFromDynamicList.runtimeType}, while correctDynamicListOfList was ${correctDynamicListOfList.runtimeType} \t //See casting worked as desired');

  // * Using `toListListNum`
  var l = toListListNum([correctDynamicList]);
  print('${++correct_count}. $l has type:${l.runtimeType} & has length:${l.length}');

  //  * Passing `List` instead of `List<List>` but, without casting it : throws `TypeError` as shown below :
  //    * type `List<dynamic>` is not a subtype of type `List<List<num>>`
  try {
    var wrongDynamicList = [1, 2];
    var wrongPoint = toListOfPoint(wrongDynamicList.cast());
    print(wrongPoint.runtimeType);
  } on TypeError catch (e) {
    print('${++exception_count}. ${e.runtimeType} Exception handled : \n \t \u2022 $e');
  }
  // type `List<dynamic>` is not a subtype of type `List<num>` in type cast
  try {
    var l = [correctDynamicList];
    print('${l.runtimeType}');
    var _ = toListOfPoint(l.cast());
  } on TypeError catch (e) {
    print('${++exception_count}. ${e.runtimeType} Exception handled : \n \t \u2022 $e');
  }

  //type `List<List<dynamic>>` is not a subtype of type `List<List<num>>` in type cast
  try {
    var l = [correctDynamicList];
    print('${l.runtimeType}');
    var _ = toListOfPoint(l.cast());
  } on TypeError catch (e) {
    print('${++exception_count}. ${e.runtimeType} Exception handled : \n \t \u2022 $e');
  }

  // * Using from
  // > type `List<dynamic>` is not a subtype of type `List<num>`
  try {
    var l = List<List<num>>.from([correctDynamicList].toList()).cast().toList();
    print('${l.runtimeType}');
    var _ = toListOfPoint(l.cast());
  } on TypeError catch (e) {
    print('${++exception_count}. ${e.runtimeType} Exception handled : \n \t \u2022 $e');
  }
}
