from django.shortcuts import render
from django.http import HttpResponse

def hola(request):
    return HttpResponse("Hola mundo!")
def home(request):
    sintomas = {
        's1' : False,
        's2' : False,
        's3' : False,
        's4' : False,
        's5' : False,
        's6' : False,
        's7' : False,
        's8' : False,
        's9' : False,
        's10' : False,
        's11' : False,
        's12' : False,
        's13' : False,
        's14' : False,
        's15' : False,
        's16' : False,
        's17' : False,
        's18' : False,
        's19' : False,
        's20' : False,
    }

    return render(request,'index.html')


