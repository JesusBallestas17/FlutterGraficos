import '../models/income_model.dart';

class FictitiousData {
  static final List<MonthlyIncome> monthlyIncomes = [
    MonthlyIncome(1, 'Ene', 18500000),
    MonthlyIncome(2, 'Feb', 21300000),
    MonthlyIncome(3, 'Mar', 19800000),
    MonthlyIncome(4, 'Abr', 24100000),
    MonthlyIncome(5, 'May', 22000000),
    MonthlyIncome(6, 'Jun', 25500000),
  ];

  static final List<MonthlyIncome> monthlyIncomesWithLoss = [
    MonthlyIncome(1, 'Jul', 15000000),
    MonthlyIncome(2, 'Ago', -4500000), // Pérdida simulada
    MonthlyIncome(3, 'Sep', 12000000),
    MonthlyIncome(4, 'Oct', 18000000),
  ];

  static final List<CategoryIncome> categoryIncomes = [
    CategoryIncome('Ropa', 45000000),
    CategoryIncome('Calzado', 25000000),
    CategoryIncome('Accesorios', 15000000),
    CategoryIncome('Perfumes', 10000000),
  ];
  
}