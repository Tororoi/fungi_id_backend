class MushroomSerializer < ActiveModel::Serializer
  attributes :id, :species, :genus, :family, :order, :classis, :phylum, :common_name, :description, :keywords

  has_many :observations, serializer: ObservationSerializer
end
