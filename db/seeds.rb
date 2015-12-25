# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

doc1 = Document.create(title: '文件一', content: 'Some content')
layer1 = doc1.layers.create(name: 'Layer1')
layer1.sections.create(content: '<p>Section 1</p>', order: 3)
layer1.sections.create(content: '<p>Section 2</p>', order: 1)
layer2 = doc1.layers.create(name: 'Layer2')
layer2.sections.create(content: '<p><b>Section 3</b></p>', order: 2)
layer2.sections.create(content: '<p>Section 4</p>', order: 4)
doc2 = Document.create(title: '文件二', content: 'some contentssssss')
layer2 = doc2.layers.create(name: 'Layer2')
layer2.sections.create(content: 'another text inside', order: 1)
