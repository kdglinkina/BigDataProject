import tarantool
import pandas as pd
from clickhouse_driver import Client
import pandahouse as ph

# подкл к тарантулу
connection = tarantool.connect("localhost", 3301, user='admin', password='pass')
# сохр данные в переменную
tester = connection.space('queue')
data = tester.select()
# панда-датафрейм
df = pd.DataFrame(data, columns=['Day', 'TickTime', 'Speed'])
# коннектимся
connection = dict(database='db', user='default', password='705')
# переносим данные в ClickHouse
ph.to_clickhouse(df, 'table', connection=connection, index=False) 
