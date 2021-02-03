from django.shortcuts import render

# Create your views here.
def inicio(request):
    return render(request,'base.html')

def imagenes(request):
    return render(request, 'mi_app/inicio.html')

def segundo(request):
    diccionario = {
        "one": "uno", 
        "two": "dos",
        "three":"tres", 
        "four": "cuatro", 
        "five":" cinco"}
    numero = 2

    context = {"diccionario":diccionario, "numero":numero}

    return render(request, 'mi_app/segundo.html', context)