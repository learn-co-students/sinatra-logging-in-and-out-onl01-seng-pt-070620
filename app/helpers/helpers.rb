class Helpers

    def self.current_user(session)
        @current_user = User.find_by(id: session[:user_id])
    end

    def self.is_logged_in?(session)
        if @current_user.id == session[:user_id]
            return true
        else
            return false
        end
    end
end