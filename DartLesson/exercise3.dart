enum MemberType { Premium, Gold, Silver }


final Map<String, Map<MemberType, double>> DiscountRate = {
  "Service": {MemberType.Premium: 0.2, MemberType.Gold: 0.15, MemberType.Silver: 0.1},
  "Product": {MemberType.Premium: 0.1, MemberType.Gold: 0.1, MemberType.Silver: 0.1}
};

class Customer {
  String? _name;
  bool _isMember = false;
  MemberType? _memberType;

  Customer(this._name);

  String? getName() {
    return this._name;
  }

  bool isMember() {
    return _isMember;
  }

  void set setMember(bool member) {
    this._isMember = member;
  }

  MemberType? get getMemberType {
    return this._memberType;
  }

  void set setMemberType(MemberType? value) {
    this._memberType = value;
    if (this._memberType != null) {
      this._isMember = true;
    }
  }

  @override
  String toString() {
    return "Customer name: $_name, Member: ${_isMember ? 'Yes' : 'No'} , ${_memberType}";
  }
}

class Visit extends Customer {
  Customer? _customer;
  String? _date;
  double _serviceExpense = 0.0;
  double _productExpense = 0.0;

  Visit(super.name, this._date);
  
  String? getName() {
    return _customer?.getName();
  }

  double? getServiceExpense() {
    return this._serviceExpense;
  }

  void setServiceExpense(double value) {
    this._serviceExpense = value;
  }

  double? getProductExpense() {
    return this._productExpense;
  }

  void set setProductExpense(double value) {
    this._productExpense = value;
  }

  double getTotalExpense() {
    return this._productExpense + this._serviceExpense;
  }
  
  @override
  String toString() {
    return "Visit Date: $_date, Total Expense: ${getTotalExpense()}";
  }
}

class DiscoundRate {
  double servicePremium = 0.2;
  double serviceGold = 0.15;
  double serviceSilver = 0.1;
  double productPremium = 0.1;
  double productGold = 0.1;
  double productSilver = 0.1;
}

void main(List<String> args) {

  // Customers
  var cus1 = Customer("Win");
  cus1.setMemberType = MemberType.Premium;
  cus1.toString();
}