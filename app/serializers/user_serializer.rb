class UserSerializer
  include JSONAPI::Serializer
  attributes :username, :name
end
