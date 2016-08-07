class Shadow < ApplicationRecord
  enum kind: [ :tree_shadow, :bus_stop, :building, :other ]
  belongs_to :user

  validates latitude: { presence: true }
  validates longitude: { presence: true }
  validates kind: { presence: true }

  has_attached_file :photo, styles: { medium: "600x600>", thumb: "100x100>" }
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
end
