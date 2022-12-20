class UsesController < ApplicationController
    # Find a user in the database using the user id from the session hash
    # Return the user as a JSON object
    def index
        user = User.find_by(id: session[:user_id])
        if user
        render json: user
        else 
            render json: { error: "Not authorized"}, status: :unauthorized
end
