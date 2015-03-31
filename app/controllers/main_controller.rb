class MainController < ApplicationController
  def index
    @student=Student.find(session[:user_id].to_i)
  end
  def login
    ip_username = params[:username]
    ip_password = params[:password]
    if request.post?
      if Student.find_by(name: ip_username,password: ip_password)
        @student = Student.find_by(name: ip_username,password: ip_password)
        session[:user_id] = @student.id
        session[:user_type]="Student"
        flash[:notice] = 'Logged in as '+ session[:user_id].to_s
        redirect_to main_index_path
      elsif Admin.find_by(name: ip_username,password: ip_password)
        @admin = Admin.find_by(name: ip_username,password: ip_password)
        flash[:notice] = 'Logged in as Admin'
        session[:user_id] = @admin.id
        session[:user_type]="Admin"
        redirect_to admin_admin_path
      else
        flash[:notice] = "Login not successful!"
        render
      end
    end
  end

  def register
    if request.post?
      ip_name = params[:name]
      reg_num = params[:regnum]
      sem = params[:semester]
      e_mail = params[:email]
      ip_branch = params[:branch]
      ip_password = params[:password]
      Student.find_or_create_by(name:ip_name ,regnum:reg_num ,semester:sem,email:e_mail,branch:ip_branch,password:ip_password)
      redirect_to main_login_path
    end
  end

  def aboutus
  end

  def logout
  end
end
