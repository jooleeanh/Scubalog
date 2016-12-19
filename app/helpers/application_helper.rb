module ApplicationHelper
  def avatar_url
    if current_user
      current_user.avatar_picture_url
    end
  end

  def social(provider)
    case provider
    when :facebook then "facebook"
    when :google_oauth2 then "google"
    end
  end
end
