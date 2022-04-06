class ApplicationController < ActionController::Base
    before_action :authenticate_user!, only: %i[ show new create edit update ]
end
