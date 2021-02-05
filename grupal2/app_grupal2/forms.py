from django import forms
from django.core import validators 


class Formulario(forms.Form):
    
    nombre = forms.CharField(validators=[validators.MinLengthValidator(3,'su nombre debe ser más largo')])
    correo = forms.EmailField(validators=validators.EmailValidator('debe ser un correo válido'))
    mensaje = forms.CharField(validators=validators.MinLengthValidator(3, 'favor sea mas expresivo'))
    
    
    
    
     

    
    
