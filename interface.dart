void main() {
  Calculator c = new Calculator();
  print("The gross total : ${c.ret_tot()}");
  print("Discount :${c.ret_dis()}");
}
mixin Calculate_Total {
  int ret_tot() {
    return 30;
  }
}
mixin Calculate_Discount {
  int ret_dis() {
    return 50;
  }
}
class Calculator  implements Calculate_Total,Calculate_Discount {
  int ret_tot() {
    return 1000;
  }
  int ret_dis() {
    return 50;
  }
}