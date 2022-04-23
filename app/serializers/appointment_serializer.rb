class AppointmentSerializer
  include JSONAPI::Serializer
  attributes :id, :initial_a4, :work_done, :price, :date, :customer_id, :piano_id, :hours, :user_id, :created_at

end
