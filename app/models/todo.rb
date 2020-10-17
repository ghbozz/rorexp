class Todo < ApplicationRecord
  include Abyme::Model
  has_many :todo_items, inverse_of: :todo, dependent: :destroy

  abyme_for :todo_items
end
