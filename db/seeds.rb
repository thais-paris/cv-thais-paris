# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

thais = User.new(
  password: "password",
  email: 'thais.paris.mallez@gmail.com',
  title: 'Developpeur web junior',
  title2: 'Future étudiante en data science',
  texte: "En cours de formation de concepteur développeur d'applications web au Wagon Paris, je souhaiterais après l’obtention de ma certification me diriger vers un master en data sciences.
                      Diplômée en 2021 d'un bachelor responsable de promotion de biens et d'événements culturels à l'ICART, c’est lors d’un partenariat avec l'école 42 que j’ai découvert un intérêt pour l'informatique, c’est ainsi que j’ai décidé de me réorienter dans ce domaine.",
)
thais.save!

competence = Competence.new(
  user_id: thais.id,
  titre: "test",
  texte: "test",
)
competence.save!

formation = Formation.new(
  user_id: thais.id,
  date: "test",
  ecole: "test",
  diplome: "test",
)
formation.save!

experience = Experience.new(
  user_id: thais.id,
  post: "test",
  entreprise: "test",
  date: "test",
  description: "test",
)
experience.save!
