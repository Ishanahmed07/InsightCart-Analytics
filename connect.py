import pandas as pd
from sqlalchemy import create_engine

df = pd.read_csv("cleaned_Retail.csv")

engine = create_engine("postgresql://postgres:1234@localhost:5432/demo")

df.to_sql("demo", engine, if_exists="replace", index=False)

print("Data uploaded successfully!")