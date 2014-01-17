# This migration comes from spree_inkomerce (originally 20140110105629)
class CreateSpreeInkButtons < ActiveRecord::Migration
  def change
    create_table :spree_ink_buttons do |t|
      t.float :maximum_discount
      t.boolean :publish
      t.string :uid, null: false
      t.string :url, nill: false
      t.boolean :published
      t.references :variant, index: {:unique=>true}

      t.timestamps
    end
    add_index :spree_ink_buttons, :uid, unique: true
  end
end
