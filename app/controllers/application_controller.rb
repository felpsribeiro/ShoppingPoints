class ApplicationController < ActionController::Base
    before_action :authenticate_funcionario!

    def index
    end
end
