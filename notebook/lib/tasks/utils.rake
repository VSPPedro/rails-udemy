namespace :utils do
  desc "Popular banco de dados."
  task seed: :environment do
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
    
    # Address
    puts "Gerando os endereços(Address)..."
    Contact.all.each do |_contact|
      Address.create!(
        street: Faker::Address.street_address, 
        city: Faker::Address.city, 
        state: Faker::Address.state_abbr, 
        contact: _contact
        )
    end
    puts "Gerando os endereços(Address)... [OK]"
    
    # Phones
    puts "Gerando os telefones(Phones)..."
    Contact.all.each do |_contact|
      Random.rand(1..5).times do |i|
        Phone.create!(
          phone: Faker::PhoneNumber.phone_number,
          contact: _contact
        )
      end
    end
    puts "Gerando os telefones(Phones)... [OK]"
  end
end
