
class Main # calme case
    #definiendo métodos de lectura & escrituras
    attr_accesor :objeto; attr_accesor :clase; attr_accesor :ls_kernel # snake case

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
        
    end 
end  

if __FILE__ == $0

end   