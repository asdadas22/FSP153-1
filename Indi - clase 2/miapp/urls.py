from django.urls import path
from . import views

app_name = 'miapp'

urlpatterns = [
    path('', views.inicio, name='inicio'),
    path('miapp/', views.temp1, name='temp1'),
    path('miapp/temp2/', views.temp2, name='temp2'),
]