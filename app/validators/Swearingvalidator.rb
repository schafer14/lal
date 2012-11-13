class Swearingvalidator < ActiveModel::Validator
	def validate(record)
		if record.content.include? "banner"
			record.errors[:content] << "Please, no swearing!!"
		end
	end
end