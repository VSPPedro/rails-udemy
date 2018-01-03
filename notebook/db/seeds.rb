# Kinds
puts "Gerando os tipos de contato(Kinds)..."
Kind.create!([{description: "Amigo"}, 
            {description: "Comercial"}, 
            {description: "Contato"}])
puts "Gerando os tipos de contato(Kinds)... [OK]"

# Contacts
puts "Gerando os contatos(Contacts)..."
10.times do |i|
  Contact.create!(
    name: Faker::Name.name, 
    email: Faker::Internet.email, 
    kind: Kind.all.sample, 
    rmk: Faker::Lorem.paragraph([1,2,3,4,5].sample)
    )
end
puts "Gerando os contatos(Contacts)... [OK]"