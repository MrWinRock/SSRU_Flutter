class Author {
  String? _name;
  String? _email;
  Gender? _gender;

  Author(this._name, this._email, this._gender);

  String? get getName {
    return _name;
  }

  String? get getEmail {
    return _email;
  }

  Gender? get getGender {
    return _gender;
  }
}

class Book {
  String? _name;
  Author? _author;
  double? _price;
  int qtyInStock = 0;

  Book(this._name, this._author, this._price);
  Book.stock(this._name, this._author, this._price, this.qtyInStock);

  String? get getName {
    return _name;
  }

  String? get getAuthorName {
    return _author?._name;
  }

  Gender? get getGender {
    return _author?._gender;
  }

  double? get getPrice {
    return _price;
  }

  void set setPrice(double? value) {
    _price = value;
  }

  int get getQtyInStock {
    return qtyInStock;
  }

  void set setQtyInStock(int value) {
    qtyInStock = value;
  }

  void Print() {
    print("Book title: $_name");
    print("Author: ${_author?.getName}");
    print("Contact: ${_author?.getEmail}");
    print("Gender: ${_author?.getGender}");
    print("Price: $_price");
    print("Quantity: $qtyInStock");
  }
}

enum Gender { male, female }

void main(List<String> args) {
  var author1 = Author("Tu", "mail@mail.mail", Gender.male);
  var book1 = Book.stock("Boooook", author1, 150.00, 10);
  book1.Print();
}
