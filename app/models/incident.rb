class Incident < ApplicationRecord
  before_validation :create_unique_id
  validates_uniqueness_of :uid

  private
  def create_unique_id
    attr_string = "#{date}-#{state}-#{city}-#{address}"
    self.uid = Digest::SHA1.hexdigest(attr_string) 
  end
end
