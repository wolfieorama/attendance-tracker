ActiveAdmin.register Attendance do

  index do
    column :user_id do |name|
      name.user.name
    end
    column :available
    column :day
    column :comment
    actions
  end
end
