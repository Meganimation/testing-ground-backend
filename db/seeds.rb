# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:Note
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first) type coercion

coercion = Note.create(name: 'Type Coercion', desc: 'When an operator is applied to the "wrong" type of value, JavaScript will convert that value to the type it needs, which may output some unexpected/strange results', code: "console.log(8*null) // 0", genre: 'Terminology')

testNote = Note.create(name: 'Test Note', desc: 'This is just a test note', code: "n/a", genre: 'Test')