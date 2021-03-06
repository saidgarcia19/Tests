select * from alumno_materia as am inner join
alumnos as a on am.id_alumno = a.id_alumno inner join
materias as m on am.id_materia = m.id_materia
where m.titulo = 'Calculo Diferencial'
and (apellido_paterno ='Guzman' OR apellido_materno ='Guzman')
and horario = '8:00'


select  m.titulo  from alumno_materia as am inner join
alumnos as a on am.id_alumno = a.id_alumno inner join
materias as m on am.id_materia = m.id_materia
where m.horario <= '12:00'
group by m.titulo
having count(m.id_materia) > 15


select count(m.id_materia), m.titulo from alumno_materia as am inner join
alumnos as a on am.id_alumno = a.id_alumno inner join
materias as m on am.id_materia = m.id_materia
group by m.titulo
having COUNT(m.id_materia) < 10

