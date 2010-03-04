module TranslationScope
  
  def ts(what, options = {})
    action = action_name
    # if validation fails we want translation in "new" scope, not "create"
    action = "new" if action == "create"
    action = "edit" if action == "update"
    
    path = "#{params[:controller]}/#{action}"
    path = options[:scope] if options[:scope]
    scope = path.gsub('/','_')
    
    return I18n.t(scope + "." + what)
  end
  
end

