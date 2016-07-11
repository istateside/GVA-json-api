class Incident < ApplicationRecord
  before_validation :create_unique_id
  before_create :convert_date_to_utc
  validates_uniqueness_of :uid

  default_scope { order(date_as_utc: :desc) }

  private
  def create_unique_id
    attr_string = "#{date}-#{state}-#{city}-#{address}"
    self.uid = Digest::SHA1.hexdigest(attr_string) 
  end

  def convert_date_to_utc
    if self.date.present? && self.date_as_utc.blank?
      self.date_as_utc = DateTime.parse(self.date) 
    end
  end
end
