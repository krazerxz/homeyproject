class Comment < ApplicationRecord
  belongs_to :project

  default_scope { order(created_at: :desc) }
end
