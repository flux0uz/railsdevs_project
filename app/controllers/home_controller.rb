class HomeController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index]
  def index
    @jobs = Job.all
  end
end
