class Carta #crear la clase
    attr_accessor :numero, :pinta #getter y setter para ambos atributos
    def initialize(numero, pinta) #inicializo con el constructor y le doy los parametros
        @numero = numero #variable de instancia y variable local
        @pinta = pinta
    end
end

a = [] #crear un arreglo para guardar ahí las 5 iteraciones
5.times do
    a.push Carta.new(Random.rand(1..13), ['C', 'D', 'E', 'T'].sample) #aleatorio los numeros 

end
print a
