class PianoSerializer
  include JSONAPI::Serializer
  attributes :make, :model, :year, :image, :serial, :notes, :customer_id, :user_id, :id, :appointment_id, :image_url

  include Rails.application.routes.url_helpers
  
  def image_url
  rails_blob_path(object.image, only_path: true) if object.image.attached?
    # object.image.map do |image|
    #   image.service_url if object.images.attached?
    # end
  end

end
