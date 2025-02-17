class Comment < ApplicationRecord
  has_paper_trail on: %i[create]

  belongs_to :project
end
