class SessionsController < ApplicationController
    def login
        user_to_login = User.find_by( username: params[:username] )
      
        if user_to_login #now check password
      
            if user_to_login.authenticate( params[:password] )
              
                #before we log the user in we want to:
                session[:user_id] = user_to_login.id
                render json: user_to_login
            else
                render json: {error: "Check Password"}
            end
      
      
        else 
            render json: {error: "No Username Matches"}
        end
    end
      

      def logout   
        #line below is logging user out, removing key from seesion hash
        session.delete( :user_id )
          
        render json: {}
      end



      def get_logged_in_user
        user_already_loggedin = User.find_by(id: session[:user_id])
        
        render json: user_already_loggedin
      end


end
