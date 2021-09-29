class CustomerSerializer
  include JSONAPI::Serializer
  attributes :name, :id, :address, :email, :phone_number, :number_of_pianos
  # attributes :customers_json do |customer|
  #   {
  #     id: customer.id,
  #     name: customer.name,
  #     address: customer.address,
  #     email: customer.email,
  #     phone_numnber: customer.phone_number,
  #     number_of_pianos: customer.number_of_pianos
  #   }
  # end
end
