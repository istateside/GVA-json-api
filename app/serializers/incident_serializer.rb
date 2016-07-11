class IncidentSerializer < ActiveModel::Serializer
  attributes :id, :state, :city, :address, :numKilled, :numInjured, :uid
end
