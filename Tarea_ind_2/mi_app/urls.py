from django.urls import path
from . import views

app_name = 'mi_app'

urlpatterns = [
    path('',views.inicio, name='inicio'),
    path('miapp/', views.imagenes, name='imagenes'),
    path('miapp/segundo/', views.segundo, name='segundo'),
]
