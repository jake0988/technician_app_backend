class PianoSerializer
  include JSONAPI::Serializer
  attributes :make, :model, :year, :image, :serial, :notes, :customer_id, :user_id, :id, :appointment_id

  include Rails.application.routes.url_helpers
  
  def images
  rails_blob_path(object.images, only_path: true) if object.images.attached?
  end

end
