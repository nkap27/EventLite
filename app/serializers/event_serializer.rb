class EventSerializer < ActiveModel::Serializer
 attributes :id, :name, :image_url, :date, :description
 
 has_many :attendees
end
