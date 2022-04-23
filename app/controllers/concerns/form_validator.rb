class FormValidator < ActiveModel::Validator
  def validate(record)
    
    if record.make.blank? && record.serial.blank? && record.model.blank? && record.year.blank? && record.notes.blank? && record.image.blank?
      record.errors.add(message: "Form cannot be blank")
      # byebug
    end
  end
end