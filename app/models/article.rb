class Article < ApplicationRecord
  enum status: %i(draft limit public)
end
