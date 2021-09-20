class UserSerializer
  include JSONAPI::Serializer

  attributes :id, :username, :name
  
  # has_many :customers, serializer: CustomerSerializer
   
end
