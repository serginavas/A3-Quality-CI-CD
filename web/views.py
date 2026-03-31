from django.shortcuts import render

# Create your views here.

def hola(request):
    context = {
        "nom": "Django"
    }
    return render(request, "hola.html", context)
