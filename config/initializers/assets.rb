# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( welcome.css )
Rails.application.config.assets.precompile += %w( welcome.js )
Rails.application.config.assets.precompile += %w( users.css )
Rails.application.config.assets.precompile += %w( users.js )
Rails.application.config.assets.precompile += %w( shops.css )
Rails.application.config.assets.precompile += %w( shops.js )
Rails.application.config.assets.precompile += %w( shoppers.css )
Rails.application.config.assets.precompile += %w( shopper.js )
Rails.application.config.assets.precompile += %w( searchs.css )
Rails.application.config.assets.precompile += %w( searchs.js )
Rails.application.config.assets.precompile += %w( products.css )
Rails.application.config.assets.precompile += %w( products.js )
Rails.application.config.assets.precompile += %w( orders.css )
Rails.application.config.assets.precompile += %w( orders.js )
Rails.application.config.assets.precompile += %w( ordered_products.css )
Rails.application.config.assets.precompile += %w( ordered_products.js )
Rails.application.config.assets.precompile += %w( availabilities.css )
Rails.application.config.assets.precompile += %w( availabilities.js )
Rails.application.config.assets.precompile += %w( application.css )
Rails.application.config.assets.precompile += %w( application.js )