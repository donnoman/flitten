class HomeController < ApplicationController

  def index
    @user = {:first_name => "Hello", :last_name => "World!"}
  end
end
