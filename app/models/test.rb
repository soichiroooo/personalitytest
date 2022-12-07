class Test < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :item
  validates :item, presence: true, numericality: { other_than: 0 }
end
