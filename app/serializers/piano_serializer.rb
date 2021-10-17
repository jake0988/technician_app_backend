class PianoSerializer
  include JSONAPI::Serializer
  attributes :make, :model, :year, :images, :serial, :notes, :customer_id, :user_id, :id
end
