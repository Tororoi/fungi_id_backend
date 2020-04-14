class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :avatar, :bio

  has_many :observations, serializer: ObservationSerializer
end
