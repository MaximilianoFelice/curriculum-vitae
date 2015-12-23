# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w( 
  apple-touch-icon-57x57.png,
  apple-touch-icon-60x60.png,
  apple-touch-icon-72x72.png,
  apple-touch-icon-76x76.png,
  apple-touch-icon-114x114.png,
  apple-touch-icon-120x120.png,
  apple-touch-icon-144x144.png,
  apple-touch-icon-152x152.png,
  apple-touch-icon-180x180.png,
  favicon-32x32.png,
  favicon-194x194.png,
  favicon-96x96.png,
  android-chrome-192x192.png,
  favicon-16x16.png
)
