class Helpers

  def self.current_user(params = {})
    User.find(params[:user_id]) unless params[:user_id].nil?
  end

  def self.is_logged_in?(session = {})
    !!current_user(session)
  end

end