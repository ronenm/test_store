# This migration comes from spree_inkomerce (originally 20140110204906)
class AddDeletedAtToInkButton < ActiveRecord::Migration
  def change
    add_column :spree_ink_buttons, :deleted_at, :datetime
  end
end
