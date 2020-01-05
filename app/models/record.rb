class Record < ApplicationRecord
  belongs_to :category

  validates :content, presence: true, length: { minimum: 1, maximum: 200, message: "Please fill in what you learned today in this box"}

end
