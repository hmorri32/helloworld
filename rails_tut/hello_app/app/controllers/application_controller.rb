class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render html: 'suh dude!'
  end

  def burritos
    render html: 'dealwitit'
  end
end
