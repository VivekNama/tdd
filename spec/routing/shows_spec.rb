require 'spec_helper'

describe "shows" do
  it "should route the root to shows#index" do
    {:get => "/"}.should route_to(:controller => "shows", :action => "index")
  end

  it "should route /shows to shows#index" do
    {:get => '/shows'}.should route_to(:controller => "shows", :action => "index")
  end

  it "should route /shows/new to shows#new" do
    {:get => '/shows/new'}.should route_to(:controller => "shows", :action => "new")
  end

  it "should route /shows/create to shows#create" do
    {:post => '/shows'}.should route_to(:controller => "shows", :action => "create")
  end

  it "should route /shows/delete to shows#destroy" do
    {:delete => '/shows/1'}.should route_to(:controller => "shows", :action => "destroy", :id => "1")
  end
end