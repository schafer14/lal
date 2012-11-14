class Swearingvalidator < ActiveModel::Validator
	def validate(record)
		if (record.content.include? "banner") || (record.content.include? "schafer")|| (record.content.include? "swordfish")|| (record.content.include? "noodle")
			record.errors[:content] << "Please, no swearing!!"
		end
	end
end