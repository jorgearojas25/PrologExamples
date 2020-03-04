esEstudiante(jorge).
esEstudiante(alexandra).
esEstudiante(alvaro).
clasesMateria(modelos2, 10).
asistenciaEstudiante(jorge, modelos2, 10).
asistenciaEstudiante(alexandra,modelos2, 9).
asistenciaEstudiante(alvaro, modelos2, 6).
esEstudianteActivo(jorge, si).
esEstudianteActivo(alexandra, si).
esEstudianteActivo(alvaro, no).
matriculado(jorge,modelos2).
matriculado(alexandra,modelos2).
matriculado(alvaro,modelos2).
notaMaxima(50).
notaMinima(10).
notaPrimerCorte(modelos2, jorge, 50).
notaSegundoCorte(modelos2, jorge, 40).
notaTercerCorte(modelos2, jorge, 45).
notaPrimerCorte(modelos2, alexandra, 45).
notaSegundoCorte(modelos2, alexandra, 48).
notaTercerCorte(modelos2, alexandra, 50).
notaPrimerCorte(modelos2, alvaro, 30).
notaSegundoCorte(modelos2, alvaro, 30).
notaTercerCorte(modelos2, alvaro, 10).

asistenciaParaPasar(Materia, X, Y):-clasesMateria(Materia, X), Y is X*0.70.

pasaPorAsistencia(Materia,Alumno):-
    asistenciaParaPasar(Materia,ClasesMateria,MinimoAsistencia), 
    asistenciaEstudiante(Alumno, Materia, X),X>MinimoAsistencia.

notaTotal(Materia, Alumno, X):-
    notaPrimerCorte(Materia, Alumno, Nota1),
    notaSegundoCorte(Materia, Alumno, Nota2),
    notaTercerCorte(Materia, Alumno, Nota3), X is Nota1*0.35 + Nota2*0.35 + Nota3*0.30.

% ['D:/Academico/Universidad/ReposModelosII/PrologExamples/CodigosDeEjemplo/Notas.pl'].