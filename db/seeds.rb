puts "Cleaning database."

Author.destroy_all

puts "Populating database..."

User.create(email: "pedro@pedro.com", password: "password")

authors_and_categories = {
	"Centro de Investigación y Docencia Económicas (CIDE)" => "Public Institution",
	"Asociación por los Derechos Civiles (ADC)" => "NGO",
	"Controladoria Geral da Uniao - Brasil" => "Public Institution",
	"Due Process of Law Foundation" => "NGO"
}

authors_and_categories.each { |name, category| Author.create(name: name, category: category) }


latin_countries = [ "Anguilla", 
										"Antigua and Barbuda", 
										"Argentina", 
										"Aruba", 
										"Bahamas", 
										"Barbados", 
										"Belize", 
										"Bolivia (Plurinational State of)", 
										"Bouvet Island", 
										"Brazil", 
										"Cayman Islands", 
										"Chile", 
										"Colombia", 
										"Costa Rica", 
										"Cuba", 
										"Curaçao", 
										"Dominica", 
										"Dominican Republic", 
										"Ecuador", 
										"El Salvador", 
										"Falkland Islands (Malvinas)", 
										"French Guiana", 
										"Grenada", 
										"Guadeloupe", 
										"Guatemala", 
										"Guyana", 
										"Haiti", 
										"Honduras", 
										"Jamaica", 
										"Martinique", 
										"Mexico", 
										"Montserrat", 
										"Nicaragua", 
										"Panama", 
										"Paraguay", 
										"Peru", 
										"Puerto Rico", 
										"Saint Barthélemy", 
										"Saint Kitts and Nevis", 
										"Saint Lucia", 
										"Saint Martin (French part)", 
										"Saint Vincent and the Grenadines", 
										"Sint Maarten (Dutch part)", 
										"South Georgia and the South Sandwich Islands", 
										"Suriname", 
										"Trinidad and Tobago", 
										"Turks and Caicos Islands", 
										"Uruguay", 
										"Venezuela (Bolivarian Republic of)", 
										"Virgin Islands (British)", 
										"Virgin Islands (U.S.)"]

latin_countries.each { |name| Country.create(name: name) }

branches = [["executive", "executivo", "ejecutivo"],
						["legislative", "legislativo", "legislativo"],
						["judicial", "judiciário","judicia"]]

branches.each { |branch| Branch.create(name_en: branch[0], name_pt: branch[1], name_es: branch[2])}

puts "done"