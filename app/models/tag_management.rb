class TagManagement < ApplicationRecord
  validates :tag, presence: true
  validates :label, presence: true
  validates :datatype, presence: true

  belongs_to :user
end
