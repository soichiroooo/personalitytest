class Color < ActiveHash::Base
  self.data = [
    { id: 1, name: 'Red' },
    { id: 2, name: 'Yellow' },
    { id: 3, name: 'Blue' },
    { id: 4, name: 'Green' },
    { id: 5, name: 'Red&Yellow' },
    { id: 6, name: 'Red&Blue' },
    { id: 7, name: 'Red&Green' },
    { id: 8, name: 'Yellow&Blue' },
    { id: 9, name: 'Yellow&Green' },
    { id: 10, name: 'Blue&Green' }
  ]

  include ActiveHash::Associations
  has_many :tests
end
