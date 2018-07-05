module Test
  def result
    prom = (nota1 + nota2) / 2.0

    if prom > 4
      "Estudiante aprobado, promedio #{prom}"
    else
      "Estudiante reprobado, promedio #{prom}"
    end
  end
end

module Attendance
  def student_quantity
    cant = self.class_variable_get(:@@quantity)
    "Cantidad de alumnos: #{cant}"
    #{}"Cantidad de Alumnos = #{self.quantity}" #No se entiende por que sale error al usar esta solucion de Nicolas
  end
end

class Student
  attr_reader :nota1, :nota2
  @@quantity = 0
  include Test
  
  extend Attendance
  
  def initialize(nombre, nota1 = 4, nota2 = 4)
    @@quantity += 1
    @nombre = nombre
    @nota1 = nota1.to_f
    @nota2 = nota2.to_f
  end

end

students = []
10.times do |i|
  students << Student.new("nombre#{i + 1}", i.to_i + 1, i.to_i + 2)
end

# print students

puts students.map(&:result)
puts Student.student_quantity
