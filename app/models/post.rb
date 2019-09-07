class Post < ApplicationRecord
    validates :title, presence: true, uniqueness: true, length: {minimum: 6, maximum: 8}
    validates :description, presence: true, uniqueness: true
end
