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
evaluacionCorte(corte1, tallerModelos1, modelos2).
evaluacionCorte(corte1, tallerModelos2, modelos2).
evaluacionCorte(corte2, tallerModelos3, modelos2).
evaluacionCorte(corte2, tallerModelos4, modelos2).
evaluacionCorte(corte3, finalModelos, modelos2).
notaMaxima(50).
notaMinima(10).
notaParcial(jorge, tallerModelos1, 38).
notaParcial(alvaro, tallerModelos1, 48).
notaParcial(alexandra, tallerModelos1, 20).
notaParcial(jorge, tallerModelos2, 50).
notaParcial(alvaro, tallerModelos2, 45).
notaParcial(alexandra, tallerModelos2, 30).

asistenciaParaPasar(Materia, X, Y):-clasesMateria(Materia, X), Y is X*0.70.

pasaPorAsistencia(Materia,Alumno):-
    asistenciaParaPasar(Materia,ClasesMateria,MinimoAsistencia), 
    asistenciaEstudiante(Alumno, Materia, X),X>MinimoAsistencia.

listaNotasCorte(Corte, Alumno , ListaNotas):-
    evaluacionCorte(Corte, Nota, Materia),
    notaParcial(Alumno,Nota,Valor),
    ListaNotas is Valor.


% ['D:/Academico/Universidad/ReposModelosII/PrologExamples/CodigosDeEjemplo/Notas.pl'].