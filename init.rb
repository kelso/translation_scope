# Include hook code here

ActionView::Base.send :include, TranslationScope
ActionController::Base.send :include, TranslationScope

