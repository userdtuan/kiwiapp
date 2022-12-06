class ApplicationController < ActionController::Base
    before_action :authenticate_user!, only: %i[ new edit update destroy ]

    def index
        @posts = Post.published
    end
end
