# This migration comes from spree_inkomerce (originally 20140307152754)
class AddSpreePromotionRefToSpreeInkDeals < ActiveRecord::Migration
  def change
    add_reference :spree_ink_deals, :promotion, index: true
  end
end
