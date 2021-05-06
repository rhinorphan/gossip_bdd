class User < ApplicationRecord
  belongs_to :city, optional: true
end
