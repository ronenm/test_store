class ChangeSpreeInkButtonsUidAndUrl < ActiveRecord::Migration
  def change
    change_column :spree_ink_buttons, :url, :string, null: true
    change_column :spree_ink_buttons, :uid, :string, null: true
  end
end
