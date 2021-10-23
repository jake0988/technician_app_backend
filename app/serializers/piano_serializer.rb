class PianoSerializer
  include JSONAPI::Serializer
  attributes :make, :model, :year, :image, :serial, :notes, :customer_id, :user_id, :id

end
