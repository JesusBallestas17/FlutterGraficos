class MonthlyIncome {
  final int id;
  final String month;
  final double amount;

  MonthlyIncome(this.id, this.month, this.amount);
}

class CategoryIncome {
  final String category;
  final double amount;

  CategoryIncome(this.category, this.amount);
}
class DailyPoint {
  final double day;
  final double amount;
  DailyPoint(this.day, this.amount);
}

class KpiIncome {
  final String metric;
  final double value;
  KpiIncome(this.metric, this.value);
}
class SellerIncome {
  final String name;
  final double amount;
  SellerIncome(this.name, this.amount);
}

class HistoryPoint {
  final double year;
  final double amount;
  HistoryPoint(this.year, this.amount);
}

class FinancialRecord {
  final int id;
  final String month;
  final double income;
  final double expense;
  FinancialRecord(this.id, this.month, this.income, this.expense);
}

class ProductSales {
  final int id;
  final String month;
  final double prodA;
  final double prodB;
  final double prodC;
  ProductSales(this.id, this.month, this.prodA, this.prodB, this.prodC);
}