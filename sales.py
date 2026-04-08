import pandas as pd
import numpy as np 
import matplotlib as plt
import seaborn as sns


df = pd.read_csv("Online_Retail.csv", encoding='ISO-8859-1')
df.head()

df.info()
df.describe()

df.isnull().sum()

df = df.dropna(subset=['CustomerID'])
df = df[df['Quantity'] > 0]
df.head()


df['InvoiceDate'] = pd.to_datetime(df['InvoiceDate'])

df['Revenue'] = df['Quantity'] * df['UnitPrice']
df['Month'] = df['InvoiceDate'].dt.month
df['Year'] = df['InvoiceDate'].dt.year


df.to_csv("cleaned_Retail.csv", index=False)