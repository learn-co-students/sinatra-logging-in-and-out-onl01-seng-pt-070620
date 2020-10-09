class Helpers

    def self.current_user(session)
        @whateveriwant = User.find(session[:user_id])
        @whateveriwant
    end

    def self.is_logged_in?(session)
        !!User.find(session[:user_id])
    end
end