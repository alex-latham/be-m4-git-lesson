# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :user
  has_many   :order_items
  has_many   :items, through: :order_items

  validates :status, presence: true

  enum status: %w[ordered paid cancelled completed]

  def format_date(date)
    date.strftime('%m/%d/%Y at %l:%M %P')
  end

  def create_order_items(cart)
    items = Item.find(cart.keys.map(&:to_i))
    items.each do |item|
      quantity = cart[item.id.to_s].to_i
      until quantity == 0
        self.items << item
        quantity -= 1
      end
    end
  end

  def self.total_ordered
    where(status: 0).length
  end

  def self.total_paid
    where(status: 1).length
  end

  def self.total_cancelled
    where(status: 2).length
  end

  def self.total_completed
    where(status: 3).length
  end
end
