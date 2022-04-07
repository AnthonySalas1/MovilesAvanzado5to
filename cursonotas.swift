struct Notas{
    private let porcentajeTeo = 0.3
    private let porcentajeLab = 0.7
    var promedioTeo = 0.0
    var promedioLab = 0.0
    
    func promedioFinal() -> Double {
        let promedio = self.promedioTeo*self.porcentajeTeo + self.promedioLab*self.porcentajeLab
        return promedio
    }
}
class Curso{
    var nombre:String = ""
    var notas = Notas()
}
class Alumno{
    var prom = 0.0
    var nombre: String
    var cont = 0.0
    var cursos : [Curso]
    init(nombre:String, cursos: [Curso]) {
        self.nombre = nombre
        self.cursos = cursos
    }
    func listaCursosNotas() {
        for curso in self.cursos {
            print("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
            let nombreCurso = curso.nombre
            let notaTeoria = curso.notas.promedioTeo
            let notaLaboratorio = curso.notas.promedioLab
            let notaFinal = curso.notas.promedioFinal()
            print("Curso: \(nombreCurso)")
            print("Teoria: \(notaTeoria)")
            print("Laboratorio: \(notaLaboratorio.rounded(.toNearestOrAwayFromZero))")
            print("Promedio Final: \(notaFinal.rounded(.toNearestOrAwayFromZero))")
        }
    }
    func listarPromedioGeneral(){
        for curso in self.cursos{
             prom +=  curso.notas.promedioFinal()
        }
     print("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")  
     print("Promedio General: \((prom/Double(cursos.count)).rounded(.toNearestOrAwayFromZero))")
    }
}
// ALUMNO 1
// instancias
var cursos = [Curso]()
//curso 1
var curso1 = Curso()
var nota1 = Notas()
curso1.nombre = "Desarrollo de aplicaciones moviles"
nota1.promedioTeo = 12.5
nota1.promedioLab = 13
curso1.notas = nota1
//curso 2
var curso2 = Curso()
var nota2 = Notas()
curso2.nombre = "Desarrollo de aplicaciones moviles Avanzado"
nota2.promedioTeo = 16.4
nota2.promedioLab = 10
curso2.notas = nota2
//curso a lista
cursos.append(curso1)
cursos.append(curso2)

// ALUMNO 2
// instancias
var cursos2 = [Curso]()
//curso 1
var curso1A = Curso()
var nota1A = Notas()
curso1A.nombre = "Marketing y Comercialización de Nuevos Productos"
nota1A.promedioTeo = 14.5
nota1A.promedioLab = 10.5
curso1A.notas = nota1A
//curso 2
var curso2A = Curso()
var nota2A = Notas()
curso2A.nombre = "Cloud Computing"
nota2A.promedioTeo = 10.4
nota2A.promedioLab = 10.2
curso2A.notas = nota2A
//curso a lista
cursos2.append(curso1A)
cursos2.append(curso2A)

//instancia alumno
var alumno = Alumno(nombre: "Juan Perez", cursos: cursos)
var alumno2 = Alumno(nombre: "Jose Vera", cursos: cursos2)
//lista de alumnos
var alumnos = [Alumno]()
alumnos.append(alumno)
alumnos.append(alumno2)
//lista de alumnos
for alumno in alumnos {
    print("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
    print("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
    print("Alumno: \(alumno.nombre)")
    alumno.listaCursosNotas()
    alumno.listarPromedioGeneral()
    print()
}
