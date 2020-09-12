# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# Sector.destroy_all

# # orgs = { "Jane Doe" => "oe" }
# orgs = { "Mujeres de las Granjas SIEMBRA" => "Autonóma",
#   "Organizaciones no gubernamentales (ONG) que adelanten programas en favor de las mujeres y que tengan cobertura en diferentes municipios del departamento." => "Autonóma",
#   "Mujeres víctimas del conflicto armado a nivel Departamental" => "Autonóma",
#   "Mujeres en proceso de reincorporación" => "Autonóma",
#   "Cabildos y/o autoridades indígenas del Departamento" => "Autonóma",
#   "Comunidad afro elegida por la Comisión Consultiva Departamental Afrodescendiente de Antioquia." => "Autonóma",
#   "Organismos Comunales de segundo y tercer grado a nivel departamental" => "Autonóma",
#   "Mesa de Trabajo Mujer Medellín" => "Autonóma",
#   "Sector de Educación: una del nivel básico y otra del nivel superior. " => "Autonóma",
#   "Consejo Departamental de juventud" => "Autonóma",
#   "Mujeres empresarias" => "Autonóma",
#   "Sector cultural" => "Autonóma",
#   "Madres Comunitarias" => "Autonóma",
#   "Sector Salud" => "Autonóma",
#   "Medios de comunicación" => "Autonóma",
#   "Mujeres con Discapacidad" => "Autonóma",
#   "Mujeres adultas mayores elegida por los cabildos mayores a nivel departamental" => "Autonóma",
#   "Mujeres inmigrantes" => "Autonóma",
#   "Mujeres disidentes sexuales y de género" => "Autonóma",
#   "Trabajadoras sexuales" => "Autonóma",
#   "Trabajadoras domésticas" => "Autonóma",
#   "Organización de Mujeres de Base" => "Popular",
#   "Mujeres Rurales" => "Popular",
#   "Mujeres Emprendedoras" => "Popular"
# }

# orgs.each do |o, t|
#   sector = Sector.new(name: o, org_type: t)
#   sector.save
# end

# d = Candidate.new(email: "dlopez.10g@gmail.com", password: "dan123*")
# d.save

# c = Candidacy.new("candidate": Candidate.find_by(email: "dlopez.10g@gmail.com") ,
#                   "sector": Sector.last,
#                   "name": "Daniel" ,
#                   "last_name": "López",
#                   "tax_id_number": 10401828,
#                   "place_of_birth": "Rionegro" ,
#                   "place_of_residence": "Sabaneta" ,
#                   "address": "cra asda" ,
#                   "phone": 31857413187 ,
#                   "expertise": "blabla",
#                   "value_proposition": "blabla" ,
#                   "disclaimer": true ,
#                   "organization": "Organization name")
# c.photo.attach(io: File.open('app/assets/images/unidas-solito.png'), filename: 'foto.png')
# c.document.attach(io: File.open('app/assets/images/unidas-solito.png'), filename: 'foto.png')
# c.confirmation_letter.attach(io: File.open('app/assets/images/unidas-solito.png'), filename: 'foto.png')
# c.organization_confirmation_letter.attach(io: File.open('app/assets/images/unidas-solito.png'), filename: 'foto.png')
# c.autonomus_confirmation_letter.attach(io: File.open('app/assets/images/unidas-solito.png'), filename: 'foto.png')
# c.save!


municipios = [
  {name: 'Caucasia', subregion: 'BAJO CAUCA' },
  {name: 'El Bagre ', subregion: 'BAJO CAUCA' },
  {name: 'Nechí', subregion: 'BAJO CAUCA' },
  {name: 'Zaragoza', subregion: 'BAJO CAUCA' },
  {name: 'Caracolí', subregion: 'BAJO CAUCA' },
  {name: 'Puerto Berrío', subregion: 'BAJO CAUCA' },
  {name: 'Amalfi', subregion: 'BAJO CAUCA' },
  {name: 'Anori', subregion: 'BAJO CAUCA' },
  {name: 'Remedios ', subregion: 'BAJO CAUCA' },
  {name: 'Segovia', subregion: 'BAJO CAUCA' },
  {name: 'Angostura', subregion: 'NORTE' },
  {name: 'Belmira', subregion: 'NORTE' },
  {name: 'Briceño', subregion: 'NORTE' },
  {name: 'Campamento', subregion: 'NORTE' },
  {name: 'Donmatías', subregion: 'NORTE' },
  {name: 'San Andrés de Cuerquia', subregion: 'NORTE' },
  {name: 'San José de la Montaña', subregion: 'NORTE' },
  {name: 'San Pedro De Los Milagros', subregion: 'NORTE' },
  {name: 'Santa Rosa de Osos', subregion: 'NORTE' },
  {name: 'Toledo ', subregion: 'NORTE' },
  {name: 'Valdivia', subregion: 'NORTE' },
  {name: 'Anzá', subregion: 'OCCIDENTE' },
  {name: 'Armenia', subregion: 'OCCIDENTE' },
  {name: 'Caicedo', subregion: 'OCCIDENTE' },
  {name: 'Frontino ', subregion: 'OCCIDENTE' },
  {name: 'Liborina', subregion: 'OCCIDENTE' },
  {name: 'Olaya', subregion: 'OCCIDENTE' },
  {name: 'Sabanalarga', subregion: 'OCCIDENTE' },
  {name: 'San Jerónimo', subregion: 'OCCIDENTE' },
  {name: 'Sopetran', subregion: 'OCCIDENTE' },
  {name: 'Santa Fe De Antioquia', subregion: 'OCCIDENTE' },
  {name: 'Alejandria', subregion: 'ORIENTE' },
  {name: 'Argelia', subregion: 'ORIENTE' },
  {name: 'Cocorna', subregion: 'ORIENTE' },
  {name: 'Concepción', subregion: 'ORIENTE' },
  {name: 'El Carmen de Viboral', subregion: 'ORIENTE' },
  {name: 'El Peñol', subregion: 'ORIENTE' },
  {name: 'El Retiro', subregion: 'ORIENTE' },
  {name: 'El Santuario', subregion: 'ORIENTE' },
  {name: 'Guarne', subregion: 'ORIENTE' },
  {name: 'Guatape', subregion: 'ORIENTE' },
  {name: 'La  Ceja', subregion: 'ORIENTE' },
  {name: 'Nariño', subregion: 'ORIENTE' },
  {name: 'San Carlos ', subregion: 'ORIENTE' },
  {name: 'San Francisco', subregion: 'ORIENTE' },
  {name: 'San  Luis', subregion: 'ORIENTE' },
  {name: 'San Rafael', subregion: 'ORIENTE' },
  {name: 'San Vicente', subregion: 'ORIENTE' },
  {name: 'Sonsón ', subregion: 'ORIENTE' },
  {name: 'Andes', subregion: 'SUROESTE' },
  {name: 'Caramanta', subregion: 'SUROESTE' },
  {name: 'Ciudad Bolivar', subregion: 'SUROESTE' },
  {name: 'Concordia', subregion: 'SUROESTE' },
  {name: 'Fredonia', subregion: 'SUROESTE' },
  {name: 'Jardin', subregion: 'SUROESTE' },
  {name: 'Jerico', subregion: 'SUROESTE' },
  {name: 'Santa Barbara', subregion: 'SUROESTE' },
  {name: 'Támesis', subregion: 'SUROESTE' },
  {name: 'Urrao', subregion: 'SUROESTE' },
  {name: 'Valparaíso', subregion: 'SUROESTE' },
  {name: 'Venecia', subregion: 'SUROESTE' },
  {name: 'Apartado', subregion: 'URABA' },
  {name: 'Arboletes', subregion: 'URABA' },
  {name: 'Carepa', subregion: 'URABA' },
  {name: 'San Juan De Urabá', subregion: 'URABA' },
  {name: 'Caldas', subregion: 'VALLE DE ABURRA' },
  {name: 'Envigado', subregion: 'VALLE DE ABURRA' },
  {name: 'Itagüí ', subregion: 'VALLE DE ABURRA' }
]

municipios.each do |mun|
  munic = Municipality.new(name: mun[:name].strip, subregion: mun[:subregion].strip)
  puts munic.name
  munic.save!
end
