class IncidentSerializer < ActiveModel::Serializer
  attributes :id, :state, :city, :address, :numKilled, :numInjured, :uid, :date_as_utc
end
