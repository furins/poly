import 'package:poly/poly.dart';

void main() {
  var correct_count = 0;
  var correctDynamicList = [1, 2, 'a', 3];
  // listOf is `List<dynamic>
  var listOf = [
    [1, true],
    [2, 'Remove me'],
    [3, 4],
    [5, 6],
    [7, 8]
  ];

  print(
      '\u2022 Old List:$correctDynamicList has type:${correctDynamicList.runtimeType} & has length:${correctDynamicList.length}');
  // * Example of `toListNum` without any optional parameters
  var l = toListNum(correctDynamicList);
  print('${++correct_count}. Using `toListNum`,$l has type:${l.runtimeType} & has length:${l.length}');

  // * Example of `toListNum` with `replaceWithZero: true` and `sizeTwo: false`
  var lSizeNotTwo_Zero = toListNum(correctDynamicList, replaceWithZero: true, sizeTwo: false);
  print(
      '${++correct_count}. Using `toListNum` with `replaceWithZero: true` and `sizeTwo: false`,$lSizeNotTwo_Zero has type:${lSizeNotTwo_Zero.runtimeType} & has length:${lSizeNotTwo_Zero.length}');

  // * Example of `toListNum` with `sizeTwo: false`
  var lSizeNotTwo = toListNum(correctDynamicList, sizeTwo: false);
  print(
      '${++correct_count}. Using `toListNum` with `sizeTwo: false`,$lSizeNotTwo has type:${lSizeNotTwo.runtimeType} & has length:${lSizeNotTwo.length}');

  // * Example of `toListListNum` without any optional parameters
  print('\n\u2022 Old List:$listOf has type:${listOf.runtimeType} & has length:${listOf.length}');

  var m = toListListNum(listOf);
  print('${++correct_count}. Using `toListListNum`,$m has type:${m.runtimeType} & has length:${m.length}');

  // * Example of `toListListNum` with `swapXAndY: true`
  var mSwap = toListListNum(listOf, swapXAndY: true);
  print(
      '${++correct_count}. Using `toListListNum` with `swapXAndY: true`,$mSwap has type:${mSwap.runtimeType} & has length:${mSwap.length}');

  // * Example of `toListListNum` with `replaceWithZero: true`
  var mZero = toListListNum(listOf, replaceWithZero: true);
  print(
      '${++correct_count}. Using `toListListNum` with `replaceWithZero: true`,$mZero has type:${mZero.runtimeType} & has length:${mZero.length}');

  // * Example of `toListListNum` with `replaceWithZero: true` and `swapXAndY: true`
  var mZeroSwap = toListListNum(listOf, replaceWithZero: true, swapXAndY: true);
  print(
      '${++correct_count}. Using `toListListNum` with `replaceWithZero: true` and `swapXAndY: true`,$mZeroSwap has type:${mZeroSwap.runtimeType} & has length:${mZeroSwap.length}');
}
