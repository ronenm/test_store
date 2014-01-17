# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Uncomment to override the default site name.
  config.site_name = "Spree-InKomerce Demo Site"
  config.inkomerce_site_type = 'production'
  config.inkit_button_logo_url = "https://s3.amazonaws.com/inkomerce-assets/sellers-assets/ink_can_light_with_bg.png"
  config.use_s3 = true
  config.s3_bucket  = ENV['S3_BUCKET']
  config.s3_access_key = ENV['S3_ACCESS_KEY']
  config.s3_secret = ENV['S3_SECRET']
  config.attachment_path = ENV['ATTACHMENT_PATH']
end

Spree.user_class = "Spree::User"
