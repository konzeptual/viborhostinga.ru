# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class StatsExtension < Radiant::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/stats"
  
  # define_routes do |map|
  #   map.namespace :admin, :member => { :remove => :get } do |admin|
  #     admin.resources :stats
  #   end
  # end
  
  def activate
    # admin.tabs.add "Stats", "/admin/stats", :after => "Layouts", :visibility => [:all]
  end
  
  def deactivate
    # admin.tabs.remove "Stats"
  end
  
end
