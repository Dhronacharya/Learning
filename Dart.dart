import "dart:math";

void main() {
  // print(fibonoci(10));
  // print(Covered_Call_Ratio_Calculation(1000));

  var a = 10;
  print(a);
}

List fibonoci(int n) {
  List<int> fibonociSeries = [];
  for (int i = 0; i <= n; i++) {
    if (fibonociSeries.length < 2) {
      fibonociSeries.add(i);
    } else {
      fibonociSeries.add(fibonociSeries[i - 1] + fibonociSeries[i - 2]);
    }
  }
  return fibonociSeries;
}

int Covered_Call_Ratio_Calculation(int num) {
  String snum = num.toString();
  if (snum.length <= 3 || num == 0) {
    return int.parse(snum[0]);
  } else if (snum.length > 3) {
    return int.parse(snum.substring(0, snum.length - 2));
  }
  return -1;
}
