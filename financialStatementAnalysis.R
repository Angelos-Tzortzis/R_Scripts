# Data.
revenue <- c(
  14574.49,
  7606.46,
  8611.41,
  9175.41,
  8058.65,
  8105.44,
  11496.28,
  9766.09,
  10305.32,
  14379.96,
  10713.97,
  15433.50
)
expenses <- c(
  12051.82,
  5695.07,
  12319.20,
  12089.72,
  8658.57,
  840.20,
  3285.73,
  5821.12,
  6976.93,
  16618.61,
  10054.37,
  3803.96
)

# Analysis.
profit <- revenue - expenses
tax <- round(profit * 0.30, digits = 2)
profitAfterTax <- profit - tax
profitMargin <- round(profitAfterTax / revenue, 2) * 100
meanPat <- mean(profitAfterTax)
goodMonths <- profitAfterTax > meanPat
badMonths <- !goodMonths
bestMonth <- profitAfterTax == max(profitAfterTax)
worstMonth <- profitAfterTax == min(profitAfterTax)
revenue_1000 <- round(revenue / 1000, 2)
expenses_1000 <- round(expenses / 1000, 2)
profit_1000 <- round(profit / 1000, 2)
profitAfterTax_1000 <- round(profitAfterTax / 1000, 2)

m <- rbind(
  profit,
  tax,
  profitAfterTax,
  profitMargin,
  meanPat,
  goodMonths,
  badMonths,
  bestMonth,
  worstMonth,
  revenue_1000,
  expenses_1000,
  profit_1000,
  profitAfterTax_1000
)
m
