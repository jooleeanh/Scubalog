module ApplicationHelper
  def avatar_url
    if current_user
      if current_user.facebook_picture_url != nil
        current_user.facebook_picture_url
      elsif current_user.google_picture_url != nil
        current_user.google_picture_url
      else
        "diver_avatar.png"
      end
    end
  end

  def social(provider)
    case provider
    when :facebook then "facebook"
    when :google_oauth2 then "google"
    end
  end
end
