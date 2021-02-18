from django import forms
from django.core import validators

class Formulario(forms.Form):
    nombre = forms.CharField(
                    validators = [
                            validators.MinLengthValidator( 6, 
                                                        "Tu nombre debe contener un minimo de 6 caracteres" ),
                            validators.MaxLengthValidator(25, 
                                                        "Tu nombre no puede contener mas de 25 caracteres") ])
    correo = forms.EmailField()

    mensaje = forms.CharField(validators = [validators.MaxLengthValidator(100, "Tu mensaje es uy largo")])