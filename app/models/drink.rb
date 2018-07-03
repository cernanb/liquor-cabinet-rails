class Drink < ApplicationRecord
  belongs_to :user, optional: true
end
