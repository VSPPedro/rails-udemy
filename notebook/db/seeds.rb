# Kinds
puts "Gerando os tipos de contato(Kinds)..."
Kind.create!([{description: "Amigo"}, 
            {description: "Comercial"}, 
            {description: "Contato"}])
puts "Gerando os tipos de contato(Kinds)... [OK]"