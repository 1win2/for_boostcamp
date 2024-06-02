class Bank {
  final String bankname;
  final String bankimagepath;

  Bank(this.bankname, this.bankimagepath);
}

class BankAccount {
  final String bankname;
  final String bankimagepath;
  int balance;
  final String? tag;

  BankAccount(this.bankname, this.bankimagepath, this.balance, {this.tag});
}
