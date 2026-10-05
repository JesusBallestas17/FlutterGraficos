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

  // Datos para la región Sur (Para comparar con la lista original que será "Norte")
  static final List<MonthlyIncome> monthlyIncomesSouth = [
    MonthlyIncome(1, 'Ene', 16000000),
    MonthlyIncome(2, 'Feb', 19000000),
    MonthlyIncome(3, 'Mar', 22500000),
    MonthlyIncome(4, 'Abr', 21000000),
    MonthlyIncome(5, 'May', 24000000),
    MonthlyIncome(6, 'Jun', 23000000),
  ];

  // Datos para gráficos de dispersión (Scatter) - Días del mes vs Volumen de venta en miles
  static final List<DailyPoint> scatterIncomes = [
    DailyPoint(1, 1500), DailyPoint(3, 2100), DailyPoint(4, 1800),
    DailyPoint(7, 3500), DailyPoint(9, 2800), DailyPoint(11, 4100),
    DailyPoint(14, 3200), DailyPoint(16, 4500), DailyPoint(19, 3900),
    DailyPoint(22, 5100), DailyPoint(25, 4800), DailyPoint(28, 5500),
  ];

  // Datos para gráficos de Radar (Métricas clave de rendimiento)
  static final List<KpiIncome> kpiIncomes = [
    KpiIncome('Ventas Directas', 85),
    KpiIncome('Suscripciones', 60),
    KpiIncome('Servicios', 90),
    KpiIncome('Publicidad', 40),
    KpiIncome('Afiliados', 70),
  ];

  // Datos para gráfico de Vendedores Top (B35)
  static final List<SellerIncome> topSellers = [
    SellerIncome('Ana M.', 12500000),
    SellerIncome('Luis C.', 10800000),
    SellerIncome('Carlos R.', 9500000),
    SellerIncome('Marta S.', 8200000),
    SellerIncome('Jorge T.', 7100000),
  ];

  // Datos para gráfico de Alta Densidad - Historial 10 años por meses (120 puntos) (B43)
  static final List<HistoryPoint> decadeHistory = List.generate(120, (index) {
    // Generación matemática de una curva ficticia de ingresos con algo de variación
    double base = 10000000;
    double growth = index * 50000;
    double variance = (index % 5) * 200000;
    return HistoryPoint(index.toDouble(), base + growth + variance);
  });

  
}