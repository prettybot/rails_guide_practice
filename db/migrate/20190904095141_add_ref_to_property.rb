class AddRefToProperty < ActiveRecord::Migration[5.1]
  def change
    add_reference :properties, :property_able, polymorphic: true
  end
end
