class OperacionesBasicas{
    func suma(_ x1:Int,_ x2:Int) -> Any{
        return ("\(x1) + \(x2) = \(x1+x2)")
    }
    func resta(_ x1:Int,_ x2:Int) -> Any{
        return ("\(x1) - \(x2) = \(x1-x2)")
    }
    func multi(_ x1:Int,_ x2:Int) -> Any{
        return ("\(x1) * \(x2) = \(x1*x2)")
    }
    func division(_ x1:Int,_ x2:Int) -> Any{
        if(x1%x2 == 0){
            return ("\(x1) / \(x2) = \(x1/x2)")
        } else {
            return ("Error de datos ingresados")
        }
    }
}
class OperacionesAvanzadas:OperacionesBasicas{
    func Potencia(_ x1:Float,_ x2:Float) -> Any{
        return ("\(x1) ^ \(x2) = \(pow(x1,x2))")
    }
    func Raiz(_ Base:Float, Indice:Int) -> Any{
        if(Indice==2){
            return ("Raiz cuadrada de \(Base) = \(sqrt(Base))")
        }
        else{
            return ("Raiz cúbica de \(Base) = \(pow(Base,1/3))")
        }
    }
    func Factorial(_ x1:Int) -> Any{
        if(x1 == 0){
        return ("El factorial de \(x1) = 1")
        } else {
        return "El factorial de \(x1) = \((1...x1).map(Double.init).reduce(1.0, *))"
        }
    }
    func Sumatoria(_ x1:Int) -> Any{
       var count:Int = x1
       var sum:Int = 0
       while(count != 0){
           sum = sum + count
           count = count - 1
       }
       return ("la sumatoria de \(x1) = \(sum)")
    }    
}
var Operar = OperacionesAvanzadas()
print(Operar.suma(3, 3))
print(Operar.resta(3, 3))
print(Operar.multi(3, 3))
print(Operar.division(3, 3))
print(Operar.division(4, 3))
print(Operar.Potencia(2, 2))
print(Operar.Raiz(4, Indice:2))
print(Operar.Raiz(27, Indice:3))
print(Operar.Factorial(3))
print(Operar.Sumatoria(4))