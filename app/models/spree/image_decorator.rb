Spree::Image.class_eval do
  Spree::Image.attachment_definitions[:attachment][:path] = ENV['ATTACHMENT_PATH']
end
