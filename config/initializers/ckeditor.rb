Ckeditor.setup do |config|
  config.assets_languages = I18n.available_locales.map &:to_s
end