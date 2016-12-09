module ApplicationHelper
  def avatar_url
    if current_user
      if current_user.facebook_picture_url != nil
        current_user.facebook_picture_url
      end
    else
      "http://placehold.it/30x30"
    end
  end
end
