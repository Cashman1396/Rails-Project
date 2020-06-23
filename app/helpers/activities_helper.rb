module ActivitiesHelper
  def activity_delete_link
    if current_user.admin
        link_to "Delete Activity", @activity, method: :delete, data: { confirm: "Delete This Activity?"}
    end 
  end 
end 