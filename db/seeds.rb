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
  {name: 'Medellín', subregion: 'Valle de Aburrá'},
  {name: 'Barbosa', subregion: 'Valle de Aburrá'},
  {name: 'Girardota', subregion: 'Valle de Aburrá'},
  {name: 'Bello', subregion: 'Valle de Aburrá'},
  {name: 'Copacabana', subregion: 'Valle de Aburrá'},
  {name: 'Envigado', subregion: 'Valle de Aburrá'},
  {name: 'Itagüí', subregion: 'Valle de Aburrá'},
  {name: 'La Estrella', subregion: 'Valle de Aburrá'},
  {name: 'Sabaneta', subregion: 'Valle de Aburrá'},
  {name: 'Caldas', subregion: 'Valle de Aburrá'},
  {name: 'Cáceres', subregion: 'Bajo Cauca'},
  {name: 'Caucasia', subregion: 'Bajo Cauca'},
  {name: 'El Bagre', subregion: 'Bajo Cauca'},
  {name: 'Nechí', subregion: 'Bajo Cauca'},
  {name: 'Tarazá', subregion: 'Bajo Cauca'},
  {name: 'Zaragoza', subregion: 'Bajo Cauca'},
  {name: 'Puerto Berrío', subregion: 'Magdalena Medio'},
  {name: 'Puerto Nare', subregion: 'Magdalena Medio'},
  {name: 'Puerto Triunfo', subregion: 'Magdalena Medio'},
  {name: 'Yondó', subregion: 'Magdalena Medio'},
  {name: 'Caracolí', subregion: 'Magdalena Medio'},
  {name: 'Maceo', subregion: 'Magdalena Medio'},
  {name: 'Cisneros', subregion: 'Nordeste'},
  {name: 'San Roque', subregion: 'Nordeste'},
  {name: 'Santo Domingo', subregion: 'Nordeste'},
  {name: 'Amalfi', subregion: 'Nordeste'},
  {name: 'Vegachí', subregion: 'Nordeste'},
  {name: 'Yalí', subregion: 'Nordeste'},
  {name: 'Yolombó', subregion: 'Nordeste'},
  {name: 'Segovia', subregion: 'Nordeste'},
  {name: 'Remedios', subregion: 'Nordeste'},
  {name: 'Anorí', subregion: 'Nordeste'},
  {name: 'Carolina del Príncipe', subregion: 'Norte'},
  {name: 'Gómez Plata', subregion: 'Norte'},
  {name: 'Guadalupe', subregion: 'Norte'},
  {name: 'Angostura', subregion: 'Norte'},
  {name: 'Briceño', subregion: 'Norte'},
  {name: 'Campamento', subregion: 'Norte'},
  {name: 'Valdivia', subregion: 'Norte'},
  {name: 'Yarumal', subregion: 'Norte'},
  {name: 'Belmira', subregion: 'Norte'},
  {name: 'Donmatías', subregion: 'Norte'},
  {name: 'Entrerríos', subregion: 'Norte'},
  {name: 'San José de la Montaña', subregion: 'Norte'},
  {name: 'San Pedro de los Milagros', subregion: 'Norte'},
  {name: 'Santa Rosa de Osos', subregion: 'Norte'},
  {name: 'Ituango', subregion: 'Norte'},
  {name: 'San Andrés de Cuerquia', subregion: 'Norte'},
  {name: 'Toledo', subregion: 'Norte'},
  {name: 'Abriaquí', subregion: 'Occidente'},
  {name: 'Cañasgordas', subregion: 'Occidente'},
  {name: 'Dabeiba', subregion: 'Occidente'},
  {name: 'Frontino', subregion: 'Occidente'},
  {name: 'Peque', subregion: 'Occidente'},
  {name: 'Uramita', subregion: 'Occidente'},
  {name: 'Anzá', subregion: 'Occidente'},
  {name: 'Armenia', subregion: 'Occidente'},
  {name: 'Buriticá', subregion: 'Occidente'},
  {name: 'Caicedo', subregion: 'Occidente'},
  {name: 'Ebéjico', subregion: 'Occidente'},
  {name: 'Giraldo', subregion: 'Occidente'},
  {name: 'Heliconia', subregion: 'Occidente'},
  {name: 'Liborina', subregion: 'Occidente'},
  {name: 'Olaya', subregion: 'Occidente'},
  {name: 'Sabanalarga', subregion: 'Occidente'},
  {name: 'San Jerónimo', subregion: 'Occidente'},
  {name: 'Santa Fe de Antioquia', subregion: 'Occidente'},
  {name: 'Sopetrán', subregion: 'Occidente'},
  {name: 'Abejorral', subregion: 'Oriente'},
  {name: 'Argelia', subregion: 'Oriente'},
  {name: 'Nariño', subregion: 'Oriente'},
  {name: 'Sonsón', subregion: 'Oriente'},
  {name: 'Alejandría', subregion: 'Oriente'},
  {name: 'Concepción', subregion: 'Oriente'},
  {name: 'El Peñol', subregion: 'Oriente'},
  {name: 'Guatapé', subregion: 'Oriente'},
  {name: 'Granada', subregion: 'Oriente'},
  {name: 'San Carlos', subregion: 'Oriente'},
  {name: 'San Rafael', subregion: 'Oriente'},
  {name: 'Cocorná', subregion: 'Oriente'},
  {name: 'San Francisco', subregion: 'Oriente'},
  {name: 'San Luis', subregion: 'Oriente'},
  {name: 'El Carmen de Viboral', subregion: 'Oriente'},
  {name: 'El Retiro', subregion: 'Oriente'},
  {name: 'El Santuario', subregion: 'Oriente'},
  {name: 'Guarne', subregion: 'Oriente'},
  {name: 'La Ceja del Tambo', subregion: 'Oriente'},
  {name: 'La Unión', subregion: 'Oriente'},
  {name: 'Marinilla', subregion: 'Oriente'},
  {name: 'Rionegro', subregion: 'Oriente'},
  {name: 'San Vicente Ferrer', subregion: 'Oriente'},
  {name: 'Amagá', subregion: 'Suroeste'},
  {name: 'Angelópolis', subregion: 'Suroeste'},
  {name: 'Fredonia', subregion: 'Suroeste'},
  {name: 'Venecia', subregion: 'Suroeste'},
  {name: 'Titiribí', subregion: 'Suroeste'},
  {name: 'Andes', subregion: 'Suroeste'},
  {name: 'Betania', subregion: 'Suroeste'},
  {name: 'Ciudad Bolívar', subregion: 'Suroeste'},
  {name: 'Hispania', subregion: 'Suroeste'},
  {name: 'Jardín', subregion: 'Suroeste'},
  {name: 'Betulia', subregion: 'Suroeste'},
  {name: 'Concordia', subregion: 'Suroeste'},
  {name: 'Salgar', subregion: 'Suroeste'},
  {name: 'Urrao', subregion: 'Suroeste'},
  {name: 'Caramanta', subregion: 'Suroeste'},
  {name: 'Jericó', subregion: 'Suroeste'},
  {name: 'La Pintada', subregion: 'Suroeste'},
  {name: 'Montebello', subregion: 'Suroeste'},
  {name: 'Pueblorrico', subregion: 'Suroeste'},
  {name: 'Santa Bárbara', subregion: 'Suroeste'},
  {name: 'Támesis', subregion: 'Suroeste'},
  {name: 'Tarso', subregion: 'Suroeste'},
  {name: 'Valparaíso', subregion: 'Suroeste'},
  {name: 'Apartadó', subregion: 'Urabá'},
  {name: 'Carepa', subregion: 'Urabá'},
  {name: 'Chigorodó', subregion: 'Urabá'},
  {name: 'Mutatá', subregion: 'Urabá'},
  {name: 'Turbo', subregion: 'Urabá'},
  {name: 'Arboletes', subregion: 'Urabá'},
  {name: 'Necoclí', subregion: 'Urabá'},
  {name: 'San Juan de Urabá', subregion: 'Urabá'},
  {name: 'San Pedro de Urabá', subregion: 'Urabá'},
  {name: 'Murindó', subregion: 'Urabá'},
  {name: 'Vigía del Fuerte', subregion: 'Urabá'},
]

municipios.each do |mun|
  munic = Municipality.new(name: mun[:name].strip, subregion: mun[:subregion].strip)
  puts munic.name
  munic.save!
end
