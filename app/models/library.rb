class Library < ApplicationRecord
    has_one_attached :thumbnail
    has_one_attached :book
end
