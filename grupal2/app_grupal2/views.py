from django.shortcuts import render
from grupal2 import settings
import csv

# Create your views here.

def principal(request):
    ruta = '/app_grupal2/static/app_grupal2/data/verduras.csv'
    with open(str(settings.BASE_DIR)+ruta, 'r') as file:
        archivo =  csv.DictReader(file)
        lista = []
        for elemento in archivo:
            result = elemento['Duraznos'], elemento['1990']
            lista.append(result)
        print(lista)
        context = {'valor': lista}
    return render(request, 'app_grupal2/index.html', context)

