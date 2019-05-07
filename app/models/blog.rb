class Blog < ApplicationRecord
  belongs_to :user
  belongs_to :analyst
end
