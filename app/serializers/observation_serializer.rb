class ObservationSerializer < ActiveModel::Serializer
  attributes :id, :mushroom_id, :mushroom, :binomial, :location, :image_one, :image_two, :image_three, :image_four, :image_five, :image_six

  def binomial
    mushroom = Mushroom.find(object.mushroom_id)
    binomial = "#{mushroom.genus} #{mushroom.species}"
    return binomial
  end

  def mushroom
    mushroom = Mushroom.find(object.mushroom_id)
    return mushroom
  end
end
