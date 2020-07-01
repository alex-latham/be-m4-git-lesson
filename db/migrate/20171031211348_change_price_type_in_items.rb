# frozen_string_literal: true

class ChangePriceTypeInItems < ActiveRecord::Migration[5.1]
  def change
    change_column :items, :price, :decimal
  end
end
