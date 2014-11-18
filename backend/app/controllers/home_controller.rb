class HomeController < ApplicationController
  def index
  end

  def time
    render text: DateTime.now.strftime("%d/%m/%Y às %H:%M:%S") 
  end
end
