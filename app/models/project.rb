class Project < ApplicationRecord
  has_many :comments, dependent: :destroy

  enum :status, %i[active archived]
end
