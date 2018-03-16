class Post < ApplicationRecord
  belongs_to :user
  has_many   :text_contents
  has_many   :textarea_contents
  has_many   :date_contents

  accepts_nested_attributes_for :text_contents
  accepts_nested_attributes_for :textarea_contents
  accepts_nested_attributes_for :date_contents
end
