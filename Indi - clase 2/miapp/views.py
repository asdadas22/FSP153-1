from django.shortcuts import render

# Create your views here.
def inicio(request):
    return render(request,'base.html')

def temp1(request):
    return render(request, 'miapp/temp1.html')

def temp2(request):
    diccionario = {
        "Motosierra": "Genera Municion", 
        "Lanzallamas": "Genera Escudo",
        "Glory kill":"Genera Vida", 
        "Lanzador": "Genera explosiones y congelacion", 
        "BFG9000":"Los mata a todos"}
    numero = 2

    context = {"diccionario":diccionario, "numero":numero}
    return render(request, 'miapp/temp2.html', context)