class MushroomSerializer < ActiveModel::Serializer
  attributes :id, :species, :genus, :family, :order, :classis, :phylum, :common_name, :description
end
