class Test < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  with_options presence:true do
    validates :item
    validates :question
  end
  
  belongs_to :item
  belongs_to :question
end
