class Post < ApplicationRecord
  belongs_to :user
  has_many   :tag_managements
  has_many   :text_contents
  has_many   :textarea_contents
  has_many   :date_contents
end
