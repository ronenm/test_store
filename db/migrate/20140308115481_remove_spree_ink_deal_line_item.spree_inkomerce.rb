# This migration comes from spree_inkomerce (originally 20140307142231)
class RemoveSpreeInkDealLineItem < ActiveRecord::Migration
  def change
    remove_reference :spree_ink_deals, :line_item
  end
end
