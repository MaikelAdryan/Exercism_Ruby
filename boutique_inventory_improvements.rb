# https://exercism.org/tracks/ruby/exercises/boutique-inventory-improvements
# Boutique Inventory Improvements

require 'ostruct'
class BoutiqueInventory
  attr_reader :items

  def initialize(items)
    @items = items.map{|item| OpenStruct.new(item)}
  end

  def item_names
    @items.map(&:name).sort
    
  end

  def total_stock
    @items.sum{ |item|
      item[:quantity_by_size].values.sum
    }
  end
end
