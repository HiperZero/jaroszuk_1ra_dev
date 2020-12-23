class Producto < ApplicationRecord
  belongs_to :marca
  belongs_to :tipo
end
