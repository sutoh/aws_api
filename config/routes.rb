Awebs::Application.routes.draw do
  match "ec2_describe_regions", :controller => :ec2_describe_regions, :action => :index
  match "link", :controller => :link, :action => :index
  root to: 'link#index'
  match "ec2_create_instance", :controller => :ec2_create_instance, :action => :index
end
