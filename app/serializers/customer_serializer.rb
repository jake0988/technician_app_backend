class CustomerSerializer
  include JSONAPI::Serializer
  attributes :name, :id, :address, :email, :phone_number, :number_of_pianos, :user_id
end
