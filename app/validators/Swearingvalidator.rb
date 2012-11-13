class Swearingvalidator < ActiveModel::Validator
	def validate(record)
		if record.content.include? "damn" or "Damn" or "banner" or "schafer" or "fuck" or "shit" or "Fuck" or "Shit"
			record.errors[:content] << "Please, no swearing!!"
		end
	end
	def validate(record)
		if record.body.include? "damn" or "Damn" or "banner" or "schafer" or "fuck" or "shit" or "Fuck" or "Shit"
			record.errors[:body] << "Please, no swearing!!"
		end
	end
	def validate(record)
		if record.title.include? "damn" or "Damn" or "banner" or "schafer" or "fuck" or "shit" or "Fuck" or "Shit"
			record.errors[:title] << "Please, no swearing!!"
		end
	end
end