class Project < ApplicationRecord
  has_paper_trail on: %i[update]
  has_many :comments, dependent: :destroy

  enum :status, %i[active archived]
end
