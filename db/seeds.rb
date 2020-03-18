# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

manifests = ["https://d.lib.ncsu.edu/collections/catalog/mc00084-001-te0159-000-001_0001/manifest.json",
"https://d.lib.ncsu.edu/collections/catalog/mc00336-1911Bldg-May2017/manifest.json",
"https://d.lib.ncsu.edu/collections/catalog/mc00240-001-ff0093-001-001_0010/manifest.json",
"https://d.lib.ncsu.edu/collections/catalog/0002386/manifest.json",
"https://d.lib.ncsu.edu/collections/catalog/nubian-message-2002-04-18/manifest.json",
"https://d.lib.ncsu.edu/collections/catalog/segIns_004/manifest",
"https://damsssl.llgc.org.uk/iiif/2.0/4665992/manifest.json",
"https://purl.stanford.edu/wh234bz9013/iiif/manifest",
"https://dnoneill.github.io/wax-iiif/img/derivatives/iiif/fullBayeux/manifest.json"]

manifests.each do |manurl|
    Manifest.create!(:url => manurl)
end