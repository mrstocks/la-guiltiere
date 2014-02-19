class Documentsimage < ActiveRecord::Base
  belongs_to :document

  mount_uploader :filename, DocumentsUploader
end
