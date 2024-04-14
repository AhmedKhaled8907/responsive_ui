class TransactionModel {
  final String title;
  final String amount;
  final String date;
  final bool isWithdrawal;

  TransactionModel({
    required this.title,
    required this.amount,
    required this.date,
    required this.isWithdrawal,
  });
}

List<TransactionModel> transactionitems = [
  TransactionModel(
    title: 'Cash Withdrawal',
    date: 'April 2022',
    amount: r'$20,225',
    isWithdrawal: true,
  ),
  TransactionModel(
    title: 'Landing Page project',
    date: 'April 2022',
    amount: r'$2,025',
    isWithdrawal: false,
  ),
  TransactionModel(
    title: 'Juni Mobile App project',
    date: 'April 2022',
    amount: r'$202',
    isWithdrawal: false,
  ),
];
