module Helper

    def current_user(session)
      if session[:id] != nil
        User.find(session[:id])
      end
    end
  
    def logged_in?(session)
      if session[:id] != nil
        user_id = current_user(session).id
        session[:id] == user_id ? true : false
      end
    end
  
    def current_gift(id)
      Gift.find(id)
    end
  
  end 