class Project < ApplicationRecord
  enum :status, %i[active archived]
end
