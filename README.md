#Для установки среды можно использовать команду
```bash
    conda env create -f environment.yml
```
или можно обновить имеющуюся среду
```bash
    conda activate dbt_sqlite
    conda env update --file environment.yml  --prune
```

файл с сырыми данными Orders.csv нужно поместить в директорию project/my_test/seeds

#из-за ошибки: AttributeError: 'SQLiteCredentials' object has no attribute 'host'
Применил заплатку 
```
https://github.com/codeforkjeff/dbt-sqlite/issues/47
https://github.com/codeforkjeff/dbt-sqlite/pull/49/files
для файла 
C:\anaconda\envs\dbt_sqlite\Lib\site-packages\dbt\adapters\sqlite\connections.py
```

и нужно убрать строки в файле C:\Users\Max\.dbt\profiles.yml
```text
    extensions:
       - '/path/to/sqlite-digest/digest.so'
```

при тесте должно быть всё нормально 
```bash
    dbt debug --project-dir ./my_test --profiles-dir ./my_test --profile my_test
```

#Для запуска проекта можно использовать следующие команды
```bash
    dbt seed --project-dir ./my_test --profiles-dir ./my_test --profile my_test
    dbt run --project-dir ./my_test --profiles-dir ./my_test --profile my_test
```


