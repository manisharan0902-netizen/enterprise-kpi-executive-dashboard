import pandas as pd

df = pd.read_csv("data/sales_performance.csv")
df["margin_pct"] = (df["profit"] / df["revenue"] * 100).round(2)
df["target_attainment_pct"] = (df["revenue"] / df["target_revenue"] * 100).round(2)

print("\nRevenue by Region")
print(df.groupby("region")["revenue"].sum().sort_values(ascending=False))

print("\nProfit by Product")
print(df.groupby("product")["profit"].sum().sort_values(ascending=False))

print("\nAverage Target Attainment")
print(df["target_attainment_pct"].mean())
