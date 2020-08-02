# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Sector.destroy_all

# orgs = { "Jane Doe" => "oe" }
orgs = { "Mujeres de las Granjas SIEMBRA" => "Autonóma",
  "Organizaciones no gubernamentales (ONG) que adelanten programas en favor de las mujeres y que tengan cobertura en diferentes municipios del departamento." => "Autonóma",
  "Mujeres víctimas del conflicto armado a nivel Departamental" => "Autonóma",
  "Mujeres en proceso de reincorporación" => "Autonóma",
  "Cabildos y/o autoridades indígenas del Departamento" => "Autonóma",
  "Comunidad afro elegida por la Comisión Consultiva Departamental Afrodescendiente de Antioquia." => "Autonóma",
  "Organismos Comunales de segundo y tercer grado a nivel departamental" => "Autonóma",
  "Mesa de Trabajo Mujer Medellín" => "Autonóma",
  "Sector de Educación: una del nivel básico y otra del nivel superior. " => "Autonóma",
  "Consejo Departamental de juventud" => "Autonóma",
  "Mujeres empresarias" => "Autonóma",
  "Sector cultural" => "Autonóma",
  "Madres Comunitarias" => "Autonóma",
  "Sector Salud" => "Autonóma",
  "Medios de comunicación" => "Autonóma",
  "Mujeres con Discapacidad" => "Autonóma",
  "Mujeres adultas mayores elegida por los cabildos mayores a nivel departamental" => "Autonóma",
  "Mujeres inmigrantes" => "Autonóma",
  "Mujeres disidentes sexuales y de género" => "Autonóma",
  "Trabajadoras sexuales" => "Autonóma",
  "Trabajadoras domésticas" => "Autonóma",
  "Organización de Mujeres de Base" => "Popular",
  "Mujeres Rurales" => "Popular",
  "Mujeres Emprendedoras" => "Popular"
}

orgs.each do |o, t|
  sector = Sector.new(name: o, org_type: t)
  sector.save
end

d = Candidate.new(email: "dlopez.10g@gmail.com", password: "dan123*")
d.save

c = Candidacy.new("candidate": Candidate.find_by(email: "dlopez.10g@gmail.com") ,
                  "sector": Sector.last,
                  "name": "Daniel" ,
                  "last_name": "López",
                  "tax_id_number": 10401828,
                  "place_of_birth": "Rionegro" ,
                  "place_of_residence": "Sabaneta" ,
                  "address": "cra asda" ,
                  "phone": 31857413187 ,
                  "expertise": "blabla",
                  "value_proposition": "blabla" ,
                  "disclaimer": true ,
                  "organization": "Organization name")
c.photo.attach(io: File.open('app/assets/images/unidas-solito.png'), filename: 'foto.png')
c.document.attach(io: File.open('app/assets/images/unidas-solito.png'), filename: 'foto.png')
c.confirmation_letter.attach(io: File.open('app/assets/images/unidas-solito.png'), filename: 'foto.png')
c.organization_confirmation_letter.attach(io: File.open('app/assets/images/unidas-solito.png'), filename: 'foto.png')
c.autonomus_confirmation_letter.attach(io: File.open('app/assets/images/unidas-solito.png'), filename: 'foto.png')
c.save!

