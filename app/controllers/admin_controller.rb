class AdminController < ApplicationController

  	def add_teacher
  		if request.post?
  			ip_name = params[:name]
      	e_mail = params[:email]
      	dept = params[:department]
      	phone = params[:phno]
      	exp = params[:xp]
      	sub_code = params[:subcode]
      	Admin.find_or_create_by(name:ip_name,email:e_mail,xp:exp,phno:phone,branch:dept,subcode:sub_code)
      	redirect_to admin_admin_path
      end
  	end

  	def update_teacher
  		if request.post?
        name = params[:name]
      	dept = params[:department]
      	new_phone = params[:phno]
      	new_exp = params[:xp]
      	new_sub_code = params[:subcode]
      	@teacher = Admin.where(["name = :n and branch = :d", { n: name, d: dept }]).first
      	@teacher.update(name:name,xp:new_exp,phno:new_phone,branch:dept,subcode:new_sub_code)
        flash[:notice] = "Update successful!"
  		end
  	end

    def delete_teacher
      if request.post?

      end
    end
end