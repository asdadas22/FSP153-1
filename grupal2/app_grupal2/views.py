from django.shortcuts import render
from django.conf import settings
from .forms import Formulario

import csv
import json



# Create your views here.

def principal(request):
    ruta = '/app_grupal2/static/app_grupal2/data/verduras.csv'
    with open(str(settings.BASE_DIR)+ruta, 'r') as file:
        archivo =  csv.DictReader(file)
        lista = []
        for elemento in archivo:
            result = [elemento['Duraznos'], elemento['1990']]
            lista.append(result)
        print(lista)
    
    if request.method == 'GET':
        formulario = Formulario()
        context = {'formulario': formulario}
        return render(request, 'app_grupal2/index.html', context)
    elif request.method == "POST":
        print("El POST contiene:", request.POST)

        formulario_devuelto = Formulario(request.POST)

        if formulario_devuelto.is_valid == True:
            datos_formulario = formulario_devuelto.cleaned_data
            
            filename = "/app_grupal2/static/app_grupal2/data/formulario.json"
            with open(str(settings.BASE_DIR)+filename, 'r') as file:
                nuevo_archivo=json.load(file)
                nuevo_archivo['nuevo_archivo'].append(datos_formulario)
            with open(str(settings.BASE_DIR)+filename, 'w') as file:
                json.dump(nuevo_archivo, file)

            context = {'nuevo_archivo': nuevo_archivo['nuevo_archivo']}
            return render(request, 'app_grupal2/index.html', context)
        else:
            context = {'nuevo_archivo': formulario_devuelto}
            return render(request, 'app_grupal2/index.html', context)