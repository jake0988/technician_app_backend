class PianoSerializer
  include JSONAPI::Serializer
  attributes :make, :model, :year, :image, :serial, :future_work
end
