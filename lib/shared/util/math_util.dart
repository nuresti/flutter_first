class MathUtil {
  static calculateTotal(List products) {
    var total = 0.0;
    for (var product in products) {
      total += product["qty"] * product["price"];
    }
    return total;
  }
}

extension ListExtension on List {
  calculateTotal() {
    List products = this;
    var total = 0.0;
    for (var product in products) {
      total += product["qty"] * product["price"];
    }
    total = total - (total * 0.1);
    return total;
  }
}
