struct tienda{
    let ruc = 10772423778
    let nombre = "Anthony Salas"
    let ganancia = 0.2
}
class producto{
    var codigo:Int=0
    var nombre:String=""
    var precio:Double = 0.0
    var store = tienda()
}
class cliente:producto{
    var dni:Int
    var nombres:String
    var product : [producto]
    init(dni:Int,nombres:String,product: [producto]){
        self.dni = dni
        self.nombres = nombres
        self.product = product
    }
    func productosComprandos(){
        for i in self.product{
            print("°°°°°°°°°°°°°°°°°°°°°°°°°")
                let nProducto = i.codigo
                let nNombre = i.nombre
                let nPrecio = i.precio
                print("Codigo: \(nProducto)")
                print("Nombre: \(nNombre)")
                print("Precio: S/. \(nPrecio)")
        }  
    }
    func totalComprado(){
        var total = 0.0
        for i in self.product{
            total += i.precio
        }
        total = total * (1 + self.store.ganancia)
        print("Total Comprado: S/. \(total.rounded(.toNearestOrAwayFromZero))")
        print("°°°°°°°°°°°°°°°°°°°°°°°°°")
    }
}
// PRODUCTOS
//CLIENTE 1
var productos1 = [producto]()
var producto1 = producto()
producto1.codigo = 1
producto1.nombre = "Coca Cola"
producto1.precio = 1.5
var producto2 = producto()
producto2.codigo = 2
producto2.nombre = "Fanta"
producto2.precio = 1.5
var producto3 = producto()
producto3.codigo = 3
producto3.nombre = "Sprite"
producto3.precio = 1.5
productos1.append(producto1)
productos1.append(producto2)
//CLIENTE 2
var productos2 = [producto]()
var producto1a = producto()
producto1a.codigo = 1
producto1a.nombre = "Harina"
producto1a.precio = 4.5
var producto2a = producto()
producto2a.codigo = 2
producto2a.nombre = "Azucar"
producto2a.precio = 2.5
var producto3a = producto()
producto3a.codigo = 3
producto3a.nombre = "Leche"
producto3a.precio = 3.5
productos2.append(producto1a)
productos2.append(producto2a)
productos2.append(producto3a)

var cliente1 = cliente(dni: 123456789, nombres: "Jose Vera", product: productos1)
var cliente2 = cliente(dni: 121234439, nombres: "Alberto Rivera", product: productos2)

var clientes = [cliente]()
clientes.append(cliente1)
clientes.append(cliente2)
for cli in clientes {
    print("COMERCIAL DEVOPS")
    print("RUC : \(cli.store.ruc)")
    print("Razon Social : \(cli.store.nombre)")
    print("┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼")
    print("DNI: \(cli.dni)")
    print("Nombres: \(cli.nombres)")
    print("Productos Comprandos:")
    cli.productosComprandos()
    cli.totalComprado()
}
print("LISTA DE CLIENTES")
for cli in clientes {
    print("°°°°°°°°°°°°°°°°°°°°°°°°°")
    print("DNI: \(cli.dni)")
    print("Nombres: \(cli.nombres)")
    print("°°°°°°°°°°°°°°°°°°°°°°°°°")
}
var productos = [producto]()
productos.append(producto1)
productos.append(producto2)
productos.append(producto3)
productos.append(producto1a)
productos.append(producto2a)
productos.append(producto3a)
print("LISTA DE PRODUCTOS")
for pro in productos {
    print("°°°°°°°°°°°°°°°°°°°°°°°°°")
    print("Codigo: \(pro.codigo)")
    print("Nombre: \(pro.nombre)")
    print("precio: S/. \(pro.precio)")
    print("°°°°°°°°°°°°°°°°°°°°°°°°°")
}