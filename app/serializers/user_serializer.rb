class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :username, :name, :customers
  # has_many :customers
end
