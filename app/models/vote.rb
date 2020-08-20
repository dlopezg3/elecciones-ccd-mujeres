class Vote < ApplicationRecord
  belongs_to :candidacy

  validates :voter_full_name, presence: true
  validates :voter_tid, presence: true, uniqueness: true
  validates :voter_email, presence: true, uniqueness: true
  validates :voter_phone, presence: true, uniqueness: true

  validates_format_of :voter_tid, with: /\A((\d{8})|(\d{10})|(\d{11})|(\d{6}-\d{5}))?\z/
  validates_format_of :voter_email, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

end
