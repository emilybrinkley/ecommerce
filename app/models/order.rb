class Order < ActiveRecord::Base
  belongs_to :user

  has_many :line_item

  serialize :order_items, Hash
end
