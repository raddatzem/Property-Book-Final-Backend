class UsersController < ApplicationController

rescue_from ActiveRecord::RecordInvalid, with: :user_unable_to_create

    #GET /user
    def index 
        render json:  User.all 
    end

    #GET /user/:id
    def show 
        user_to_find = User.find_by( id: params[:id] )

        if user_to_find  #true -if user is found
            render json: user_to_find
        else #false- user not found 
            render json: {error: "User Not Found"}
        end
    end

    #POST /users
    def create
      
        new_user = User.create!(user_create_params)
        #below (session) is the line that is logging in the user
        session[:user_id] = new_user.id

        render json: new_user

    end

    #PATCH /user/:id
    def update
        user_to_find = User.find_by( id: params[:id] )

        if user_to_find #did we find a user?

            if user_to_find.update(user_update_params) #okay, but did the user update properly?
                render json: user_to_find
            else
                render json: { errors: user_to_find.errors.full_messages }
            end
        else render json: {error: "User Not Found"}
        end 
    end

    #DELETE /user/:id
    def destroy
        user_to_find = User.find_by( id: params[:id] )
        user_to_find.destroy
        
        head :no_content

    end



    private

    ###Strong Params###

    #the only params to allow through (no one can put bad code through)
    def user_create_params
        params.permit(:username, :password)

    end

    def user_update_params
        params.permit(:username, :password)
    end

    ####Private Methods####

    #Issue Creating a User
    def user_unable_to_create( invaild_user)
    render json: {errors: invaild_user.record.errors.full_messages}
    end



end