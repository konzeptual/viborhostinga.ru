# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class ProvodnikExtension < Radiant::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/provodnik"
  
  define_routes do |map|
    map.provodnik 'provodnik/hosting/prostoy', :controller => 'provodnik', :action => 'show'
  end

  # define_routes do |map|
  #   map.namespace :admin, :member => { :remove => :get } do |admin|
  #     admin.resources :provodnik
  #   end
  # end
  
  def activate
    # admin.tabs.add "Provodnik", "/admin/provodnik", :after => "Layouts", :visibility => [:all]
  end
  
  def deactivate
    # admin.tabs.remove "Provodnik"
  end
  
end
