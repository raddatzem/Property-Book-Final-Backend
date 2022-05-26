class PropertiesController < ApplicationController

    def index
        render json: Property.all

    end

    def show 
        properties_to_find = Property.where( user_id: params[:id] )

        if properties_to_find  #true -if user is found
            render json: properties_to_find
        else #false- user not found 
            render json: {error: "User Has No Properties"}
        end
    end

  #PATCH /properties/:id
  def update
    property_to_find = Property.find_by( id: params[:id] )

    if property_to_find 

        if property_to_find.update(property_update_params) #okay, but did the user update properly?
            render json: property_to_find
        else
            render json: { errors: property_to_find.errors.full_messages }
        end
    else render json: {error: "Property Not Found"}
    end 
end

#POST /properties
def create
    manager = Manager.find_by(name: params[:managername]) 
    user = User.find_by(username: params[:username])
    new_property = Property.create(:address => params[:address], :name => params[:name], :notes => params[:notes], :image => params[:image], :manager => manager, :user => user )
    #below (session) is the line that is logging in the user
   
    render json: new_property

end

#DELETE /properties/:id
def destroy
    property_to_find = Property.find_by( id: params[:id] )
    property_to_find.destroy
    
    

end


private

def property_update_params
    params.permit(:address, :id, :name, :notes, :image)
end





end
