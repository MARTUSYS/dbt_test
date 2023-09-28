#Для установки среды можно использовать команду
```bash
    conda env update --file environment.yml  --prune
```

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
    dbt debug
```

#Для запуска проекта можно использовать следующие команды
```bash
    cd my_test
    dbt seed
    dbt run
```

