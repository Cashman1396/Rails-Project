module SessionsHelper
 #the logic to sign up and in as a camp counselor
  def signin_logic
    if params[:camp_counselor]
        if counselor = Counselor.find_by(name: params[:camp_counselor][:name]).try(:authenticate, params[:camp_counselor][:password])
          session[:user_id] = counselor.id
          redirect_to camp_counselor_path(counselor)
        else 
          flash[:notice] = "Invalid username or password" 
          redirect_to signin_path
        end 
    elseif counselor = CampCounselor.find_or_create_by(uid: auth['uid']) do |user|
        user.name = auth['info']['name']
        user.email = auth['info']['email']
        user.password_digest = auth['uid']
        end 
        session[:user_id] = counselor.id
        redirect_to camp_counselor_path(counselor)
    else 
        flash[:notice] = "Invalid username or password" 
        redirect_to signin_path
    end 
  end 

  def login_error
     flash[:notice]
  end   


end 
