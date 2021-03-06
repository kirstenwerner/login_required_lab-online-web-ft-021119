class SecretsController < ApplicationController
before_action :require_login

  def show
    @secret
  end

  private

  def require_login
    return redirect_to '/sessions/new' unless session.include? :name
  end
end
