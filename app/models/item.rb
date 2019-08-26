# == Schema Information
#
# Table name: items
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string
#  price_new   :decimal(, )
#  price_sale  :decimal(, )
#  status      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint
#
# Indexes
#
#  index_items_on_category_id  (category_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#

class Item < ApplicationRecord
  belongs_to :category
  enum status: %w[active sold]
end
