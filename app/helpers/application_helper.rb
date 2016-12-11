module ApplicationHelper
  def avatar_url
    if current_user
      if current_user.facebook_picture_url != nil
        current_user.facebook_picture.url
      elsif current_user.google_picture_url != nil
        current_user.google_picture_url
      else
        "diver_avatar.png"
      end
    end
  end
end
