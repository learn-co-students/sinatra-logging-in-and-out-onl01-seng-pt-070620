class Helpers

    def self.current_user(session)
        @current_user = User.find_by(id: session[:user_id])
        @current_user
    end 

    def self.is_logged_in?(session)
        if session[:user_id] == @current_user.id
          true
        else 
          false
        end
        
    end 

end