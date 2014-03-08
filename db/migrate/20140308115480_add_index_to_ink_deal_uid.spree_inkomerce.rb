# This migration comes from spree_inkomerce (originally 20140307141723)
class AddIndexToInkDealUid < ActiveRecord::Migration
  def change
    add_index :spree_ink_deals, :uid, unique: true
  end
end
