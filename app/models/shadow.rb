class Shadow < ApplicationRecord
  enum kind: [ :tree_shadow, :bus_stop, :building, :other ]
  belongs_to :user

  validates latitude: { presence: true }
  validates longitude: { presence: true }
  validates kind: { presence: true }
end
