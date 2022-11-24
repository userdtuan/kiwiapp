class ApplicationController < ActionController::Base
    def index
        @posts = Post.published
    end
end
