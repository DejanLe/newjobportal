class Proposal < ApplicationRecord
  belongs_to :gig , optional: true
  belongs_to :user , optional: true
end
