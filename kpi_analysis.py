import pandas as pd
df=pd.read_csv("data/enterprise_kpis.csv")
print(df.groupby("business_unit").agg(
 actual=("actual_volume","sum"), target=("target_volume","sum"),
 revenue=("revenue","sum"), profit=("profit","sum"),
 data_quality=("data_quality_pct","mean")).round(2))
