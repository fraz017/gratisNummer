json.contacts do 
	@contacts.each do |contact|
		json.child! do 
			json.id contact.id
			json.name contact.name
			json.number contact.number
			json.logo contact.logo.url
			json.works_for_telenor contact.is_working
		end
  end	
end