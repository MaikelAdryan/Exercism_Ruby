# https://exercism.org/tracks/ruby/exercises/boutique-inventory
# Boutique Inventory

class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    @items.map{|item| item[:name]}.sort
  end

  def cheap
    @items.select{|item| item[:price] < 30.0}
  end

  def out_of_stock
    @items.select{|item| item[:quantity_by_size]=={}}
  end

  def stock_for_item(name)
    @items.map{|item| return item[:quantity_by_size] if item[:name] == name}
  end

  def total_stock
    if  items == [] 
      return 0 
    end
    @items.map{|item|
      return item[:quantity_by_size].map{|_,size| size}.sum
    }
  end

  private
  attr_reader :items
end
