class PianoSerializer
  include JSONAPI::Serializer
  attributes :make, :model, :year, :image, :serial, :notes
end
