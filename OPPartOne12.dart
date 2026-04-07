class product {
  String name = "";
  int _quantity = 0;
  product(this.name, this._quantity);
  int get quantity => _quantity;
  set quantity(int value) {
    if (value < 0) {
      print("Quntity can't be negative");
      return;
    }
    _quantity = value;
  }

  void reduceStock(int amount) {
    if (amount <= 0) {
      print("Amount must be greater than 0");
      return;
    }
    _quantity -= amount;
    print("$amount removed. new quantity:$_quantity");
  }

  void restock(int amount) {
    if (amount <= 0) {
      print("rstock must be greater than 0");
      return;
    }
    _quantity += amount;
    print("$amount added. new quantity:$_quantity");
  }

  void main() {
    product p = product("Laptop", 10);
    p.reduceStock(3);
    p.restock(5);
    p.quantity = -10;
    print(p.quantity);
  }
}
