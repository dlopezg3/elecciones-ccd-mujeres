class Vote < ApplicationRecord
  belongs_to :candidacy

  validates :voter_full_name, presence: true
  validates :voter_tid, presence: true, uniqueness: true
  validates :voter_email, presence: true, uniqueness: true
  validates :voter_phone, presence: true, uniqueness: true
end
