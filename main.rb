
require 'logger'

class Main # calme case
    #definiendo métodos de lectura & escrituras
    attr_accessor :objeto; attr_accessor :clase; attr_accessor :ls_kernel # snake case

    def objeto_main
        if @objeto.nil?
            puts '...' # Devolvera '...' si la variable de instancia @objeto esta nula
        else
            puts "Objeto (ejecutado) es: #{@objeto}"
        end     
    end 

    def clase_object
        if @clase.nil?
            puts '...'
        else
            puts "Clase basé del objeto #{@objeto} es: #{clase}"
        end         
    end    

    def metodo_kernel
        if @ls_kernel.nil?
            puts '...'
        elsif @ls_kernel.respond_to?('each')
            metodos = []  
            @ls_kernel.each do |value|
                metodos << value   
              puts "Los métodos kernel: #{value}"
            end   
            puts "¡Aprende este método! -> #{metodos.sample}"
            bandera = false
            while(not bandera)
              puts 'Requieres guardar los datos[S/n]:'   
              option = gets().chomp.to_s
              puts case option
              when 's' #Caso 1
                registro_metodos_kernel = Logger.new('registro_metodos_kernel.txt','daily')
                registro_metodos_kernel.level = Logger::INFO
                if @ls_kernel.respond_to?('join')
                    registro_metodos_kernel.info "Los métodos kernel: #{@ls_kernel.join("\n ============================================= \n ")}"       
                end 
                puts 'Sus datos están almacenado en la ruta:'
                puts `pwd` #String entre acento grave
                bandera = true
                '¡Exitoso!'
              when 'n'
                bandera = true
                'Abortado'
              else 
                '¡Caracter no identificado!'
              end 
            end 
        end 
     end 
end  

if __FILE__ == $0

    instances = Main.new
    instances.objeto = self.to_s
    instances.objeto_main

    instances.clase = self.class.to_s
    instances.clase_object


    instances.ls_kernel = self.private_methods.sort
    instances.metodo_kernel
end   