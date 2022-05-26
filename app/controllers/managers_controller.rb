class ManagersController < ApplicationController

    #GET /manager/:id
    def show 
        manager_to_find = Manager.find_by( id: params[:id] )

        if manager_to_find  #true -if user is found
            render json: manager_to_find
        else #false- user not found 
            render json: {error: "Manager Not Found"}
        end
    end

 #GET /manager
 def index 
    render json:  Manager.all 
end



end
