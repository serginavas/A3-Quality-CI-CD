from django.shortcuts import render

def hola(request):
    context = {"nom": "Django"}
    return render(request, "hola.html", context)
