class CuentaBancaria
    attr_accessor :nombre_de_usuario, :numero_de_cuenta, :vip
    def initialize(nombre_de_usuario, numero_de_cuenta, vip = 0)#agregar el tercer parámetro vip
        raise RangeError, 'La cuenta debe tener 8 digitos' if numero_de_cuenta.digits.count != 8
        #levantar una excepción del tipo RangeError si el atributo numero_de_cuenta es distinto de 8
        raise ArgumentError, 'Debe ingresar 0 o 1' if vip != 0 && vip != 1 #si vip es distinta de 0 o 1 se pide ingresar 0 o 1
        @nombre_de_usuario = nombre_de_usuario
        @numero_de_cuenta = numero_de_cuenta
        @vip = vip
        
    end
    def numero_de_cuenta_final #crear metodo que devuelva el numero de cuenta 
        "#{vip}-#{numero_de_cuenta}"
    end
end

cuenta = CuentaBancaria.new('Angélica', 12345678, 0)
puts cuenta.numero_de_cuenta_final