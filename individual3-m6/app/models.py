from django.db import models

# Create your models here.

class Padres(models.Model):
    nombre = models.CharField(max_length=50)
    edad = models.IntegerField()

class Hijos(models.Model):
    nombre = models.CharField(max_length=50)
    edad = models.IntegerField()
    padres = models.ForeignKey(Padres, on_delete=models.SET_NULL, null = True, blank = True)


class Santaclaus(models.Model):
    nombre = models.CharField(max_length=50)
    
class Proveedor(models.Model):
    nombre = models.CharField(max_length=50)
    
class Carta(models.Model):
    resumen = models.CharField(max_length=250)
    hijos = models.OneToOneField(Hijos, on_delete=models.CASCADE)
    
class Regalo(models.Model):
    carta = models.ManyToManyField(Carta)
    
#carta_1.regalos.add(carta_nueva, carta_nueva2...) 