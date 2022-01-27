class HomeController < ApplicationController
  #index and about are 2 methods 
  #code can be written using instance to push output
  #api , get request can be done in function corresponding to that page
  def index
  end

  def about
    #instance var @about_me
    @about_me = "Created by Mansi"
    @answer = 2+2
  end
end
