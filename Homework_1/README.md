# Домашняя работа №1

## Установка Python 

Установим Python с официального сайта: [официального сайта Python](https://www.python.org/downloads/release)

Убедимся, что Python успешно установлен, выполнив команду:

```bash
python3 --version
```

## Настройка окружения в Poetry

Установим Poetry, выполнив следующие команды:

```bash
(Invoke-WebRequest -Uri https://install.python-poetry.org -UseBasicParsing).Content | py -
```

Создадим каталог проекта и инициализируем окружение: 

```bash
poetry init
```

Poetry создаст файл `pyproject.toml`, содержащий информацию о проекте и его зависимостях.

## Установка библиотек

Для установки библиотек pandas и numpy, а так же JupyterLab в окружении Poetry, выполним следующие команды:

```bash
poetry add pandas
poetry add numpy
poetry add jupyter lab
```
