class Document < ActiveRecord::Base

  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :documentsimages

  # Friendly id is very bugged 
  def self.find(id)
    self.friendly.find(id)
  end
end
