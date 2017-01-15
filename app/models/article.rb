class Article < ApplicationRecord
  enum status: %i(draft limiting publish)
end
