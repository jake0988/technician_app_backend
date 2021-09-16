class CustomerSerializer
  include JSONAPI::Serializer
  attributes :name, :address, :email, :phone_number, :number_of_pianos
end
