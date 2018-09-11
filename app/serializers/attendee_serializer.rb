class AttendeeSerializer < ActiveModel::Serializer
 attributes :id, :name, :image_url

 belongs_to :event
end
