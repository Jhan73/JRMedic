% SINTOMAS
%S1 : fiebre
%s2 : dolor de cabeza
%s3 : tos
%s4 : dolor muscular
%s5 : fatiga
%s6 : congestion nasal
%s7 : dolor de garganta
%s8 : dolor de pecho
%s9 : sudoracion
%s10 : dolor abdominal
%s11 : diarrea
%s12 : perdida de peso
%s13 : sed excesiva
%s14 : micción frecuente
%s15 : visión borrosa
%s16 : anmia 
%s17 : erupción cutánea
%s18 : picazón
%s19 : heridas que tardan sanar
%s20 : sangrado rectal
tiene(s10).
tiene(s11).
tiene(s12).
tiene(s5).
tiene(s1).
tiene(s20).

%Gripe: fiebre, tos, dolor de cabeza, dolor muscular, fatiga, congestión nasal y dolor de garganta
enfermedad('Gripe'):-tiene(s1),tiene(s3),tiene(s2),tiene(s4),tiene(s5),tiene(s6),tiene(s7).

%Neumonía: fiebre alta, tos con moco, dolor en el pecho, sudoración excesiva y fatiga
enfermedad('Neumonía'):-tiene(s1),tiene(s3),tiene(s8),tiene(s9),tiene(s5).

%Diabetes: sed excesiva, micción frecuente, visión borrosa, fatiga, heridas que tardan en sanar y pérdida de peso involuntaria.
enfermedad('Diabetes'):-tiene(s13),tiene(s14),tiene(s15),tiene(s5),tiene(s19),tiene(s12).

%Enfermedad inflamatoria del intestino (EII): dolor abdominal, diarrea crónica, pérdida de peso, fatiga, fiebre y sangrado rectal.
enfermedad('Enfermedad inflamatoria del intestino'):-tiene(s10),tiene(s11),tiene(s12),tiene(s5),tiene(s1),tiene(s20).

%Enfermedad celíaca: diarrea crónica, dolor abdominal, pérdida de peso, fatiga, anemia y erupción cutánea.
enfermedad('Enfermedad celíaca'):-tiene(s11),tiene(s10),tiene(s12),tiene(s5),tiene(s16),tiene(s17).

%COVID-19: fiebre, dolor de cabeza, tos, dolor muscular, fatiga, congestión nasal, dolor de garganta, sudoración, dolor abdominal, diarrea, pérdida de peso, visión borrosa.
enfermedad('Covid-19'):-tiene(s1),tiene(s2),tiene(s3),tiene(s4),tiene(s5),tiene(s6),tiene(s7),tiene(s9),tiene(s10),tiene(s11),tiene(s12),tiene(s15).

%Alergias: erupción cutánea, picazón, congestión nasal, tos, dolor de cabeza.
enfermedad('Alergia'):-tiene(s17),tiene(s18),tiene(s6),tiene(s3),tiene(s2).