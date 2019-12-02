Pod::Spec.new do |s|

  s.name         		 = "HelloLoggingFramework"
  s.version      		 = "1.0.0"
  s.summary      		 = "Freshchat iOS SDK - Modern messaging software that your sales and customer engagement teams will love."
  s.description  		 = <<-DESC
                   			Modern messaging software that your sales and customer engagement teams will love.
                   			DESC
  s.homepage     		 = "https://www.freshchat.com"
  s.license 	 		 = { :type => 'Commercial', :file => 'FreshchatSDK/LICENSE', :text => 'See https://www.freshworks.com/terms' } 
  s.author       		 = { "Freshdesk" => "support@freshchat.com" }
  s.social_media_url     = "https://twitter.com/freshchatapp"
  s.platform     		 = :ios, "8.0"
  s.source       		 = { :git => "https://github.com/adrianpopbox/testing.git", :tag => "v#{s.version}" }

end