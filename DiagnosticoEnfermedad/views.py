from django.shortcuts import render
from pyswip import Prolog

sintomas_test = ['s10','s11','s12','s5','s1','s20']
#sintomas_test = ['s1','s2','s3','s4','s5','s6','s7']
#sintomas_test = ['s1','s2','s5','s6','s7']
def home(request):
    if request.method == 'POST':
        sintomas = {}
        for i in range(1, 21):
            sintomas[f's{i}'] = request.POST.get(f's{i}', False) == 'on'

        sintomas_reportadas = []
        enfermedad_diagnosticada = 'Enfermedad no detectada'
        for sintoma in sintomas:
            if sintomas.get(sintoma):
                sintomas_reportadas.append(sintoma)

        #enfermedades_diagnosticada = diagnosticar(sintomas_reportadas)#Esta parte produce un erro que aun no he solucionado
        #print(sintomas_reportadas)
        #print(enfermedad_diagnosticada)
        return render(request,'index.html',{
            'sintomas': sintomas_reportadas,
            'diagnostico': enfermedad_diagnosticada
        })
    else: 
        return render(request,'index.html')

def diagnosticar(sintomas):
    enfermedad = ''
    prolog = Prolog()
    prolog.consult('./prolog/sintomas.pl')

    for sintoma in sintomas:
        prolog.assertz("tiene("+sintoma+")")

    for resultado in prolog.query("enfermedad(X)"):
        #print(resultado["X"])
        #print(resultado)
        enfermedad = resultado["X"]
    if len(enfermedad) == 0:
        enfermedad = 'Nose tiene los sintomas suficientes para diagnosticar una enfermedad'
    prolog.query("halt")
    return enfermedad

print(diagnosticar(sintomas_test))
