module ApplicationHelper
 
    def link(label, href)
      "<a href='#{ href }'>#{ label }</a>"
    end

    def current_user
      User.find_by(id: session[:user_id])
    end

    def log_in?
      !!current_user
    end
 
end
