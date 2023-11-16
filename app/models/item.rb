class Item < ApplicationRecord
   validates :name, :deleted_at, presence: true
end
