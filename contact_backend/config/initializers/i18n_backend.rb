require 'i18n/backend/active_record'
I18n.backend = I18n::Backend::ActiveRecord.new
translations = {}
I18n.backend = I18n::Backend::KeyValue.new(translations)
I18n::Backend::Simple.include(I18n::Backend::Gettext)
I18n.load_path += Dir["/translations/<de>/*.de"]
