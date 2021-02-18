from django.shortcuts import render
from .models import *

# Create your views here.

def inicio(request):
    padres_obtenidos = Padres.objects.values()
    hijos_obtenidos = Hijos.objects.values()
    santas_obtenidos = Santaclaus.objects.values()
    proveedor_obtenidos = Proveedor.objects.values()
    cartas_obtenidas = Carta.objects.all()
    context = {'padres': padres_obtenidos,
                'hijos': hijos_obtenidos,
                'santas': santas_obtenidos,
                'proveedores': proveedor_obtenidos,
                'cartas': cartas_obtenidas
                } 
    return render(request, 'app/index.html', context)