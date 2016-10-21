class Contact < ApplicationRecord
	validates_presence_of :name, :number

	has_attached_file :logo, styles: { thumb: "100x100>" }
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/
end
