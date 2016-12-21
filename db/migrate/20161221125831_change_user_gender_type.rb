class ChangeUserGenderType < ActiveRecord::Migration[5.0]
  def up
    User.all.each do |user|
      case user.gender
      when "male" then user.gender = 1
      when "female" then user.gender = 2
      when "undisclosed_gender" then user.gender = 0
      else user.gender = 0
      end
      user.save
    end
    change_column :users, :gender, 'integer USING CAST(gender AS integer)'
  end

  def down
    change_column :users, :gender, 'varchar USING CAST(gender AS varchar)'
    User.all.each do |user|
      case user.gender
      when "1" then user.gender = "male"
      when "2" then user.gender = "female"
      when "0" then user.gender = "undisclosed_gender"
      end
      user.save
    end
  end
end
