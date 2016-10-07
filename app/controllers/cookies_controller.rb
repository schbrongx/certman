class CookiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
end
