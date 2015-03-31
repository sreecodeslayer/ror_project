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

    def perform_survey_evaluation
      if request.post?
        student=Student.find(session[:user_id].to_i)
        excellent_sub_1_count = 1
        excellent_sub_2_count = 1
        excellent_sub_3_count = 1
        excellent_sub_4_count = 1
        excellent_sub_5_count = 1
        excellent_sub_6_count = 1

        good_sub_1_count = 1
        good_sub_2_count = 1
        good_sub_3_count = 1
        good_sub_4_count = 1
        good_sub_5_count = 1
        good_sub_6_count = 1

        fair_sub_1_count = 1
        fair_sub_2_count = 1
        fair_sub_3_count = 1
        fair_sub_4_count = 1
        fair_sub_5_count = 1
        fair_sub_6_count = 1

        poor_sub_1_count = 1
        poor_sub_2_count = 1
        poor_sub_3_count = 1
        poor_sub_4_count = 1
        poor_sub_5_count = 1
        poor_sub_6_count = 1

        params.each do|key,value|
          if value=='5' and (key == 'norms_sub1'or key=='knw_sub1'or key=='cla_sub1' or key=='wil_sub1' or key=='class_sub1' or key=='lec_sub1' or key=='pre_sub1' or key=='enc_sub1' or key=='board_sub1' or key=='beh_sub1' or key== 'sinc_sub1' or key=='regu_sub1' or key=='ote_sub1')
            excellent_sub_1_count+=1
          elsif value=='5' and (key == 'norms_sub2'or key=='knw_sub2'or key=='cla_sub2' or key=='wil_sub2' or key=='class_sub2' or key=='lec_sub2' or key=='pre_sub2' or key=='enc_sub2' or key=='board_sub2' or key=='beh_sub2' or key== 'sinc_sub2' or key=='regu_sub2' or key=='ote_sub2')
            excellent_sub_2_count+=1
          elsif value=='5' and (key == 'norms_sub3'or key=='knw_sub3'or key=='cla_sub3' or key=='wil_sub3' or key=='class_sub3' or key=='lec_sub3' or key=='pre_sub3' or key=='enc_sub3' or key=='board_sub3' or key=='beh_sub3' or key== 'sinc_sub3' or key=='regu_sub3' or key=='ote_sub3')
            excellent_sub_3_count+=1
          elsif value=='5' and (key == 'norms_sub4'or key=='knw_sub4'or key=='cla_sub4' or key=='wil_sub4' or key=='class_sub4' or key=='lec_sub4' or key=='pre_sub4' or key=='enc_sub4' or key=='board_sub4' or key=='beh_sub4' or key== 'sinc_sub4' or key=='regu_sub4' or key=='ote_sub4')
            excellent_sub_4_count+=1
          elsif value=='5' and (key == 'norms_sub5'or key=='knw_sub5'or key=='cla_sub5' or key=='wil_sub5' or key=='class_sub5' or key=='lec_sub5' or key=='pre_sub5' or key=='enc_sub5' or key=='board_sub5' or key=='beh_sub5' or key== 'sinc_sub5' or key=='regu_sub5' or key=='ote_sub5')
            excellent_sub_5_count+=1
          elsif value=='5' and (key == 'norms_sub6'or key=='knw_sub6'or key=='cla_sub6' or key=='wil_sub6' or key=='class_sub6' or key=='lec_sub6' or key=='pre_sub6' or key=='enc_sub6' or key=='board_sub6' or key=='beh_sub6' or key== 'sinc_sub6' or key=='regu_sub6' or key=='ote_sub6')
            excellent_sub_6_count+=1

          elsif value=='3' and (key== 'notes_sub1'or key=='knw_sub6'or key=='cla_sub6' or key=='wil_sub6' or key=='class_sub6' or key=='lec_sub6' or key=='pre_sub6' or key=='enc_sub6' or key=='board_sub6' or key=='beh_sub6' or key== 'sinc_sub6' or key=='regu_sub6' or key=='ote_sub6')
            good_sub_1_count+=1
          elsif value=='3' and (key== 'notes_sub1'or key=='knw_sub2'or key=='cla_sub2' or key=='wil_sub2' or key=='class_sub2' or key=='lec_sub2' or key=='pre_sub2' or key=='enc_sub2' or key=='board_sub2' or key=='beh_sub2' or key== 'sinc_sub2' or key=='regu_sub2' or key=='ote_sub2')
            good_sub_2_count+=1
          elsif value=='3' and (key== 'notes_sub1'or key=='knw_sub3'or key=='cla_sub3' or key=='wil_sub3' or key=='class_sub3' or key=='lec_sub3' or key=='pre_sub3' or key=='enc_sub3' or key=='board_sub3' or key=='beh_sub3' or key== 'sinc_sub3' or key=='regu_sub3' or key=='ote_sub3')
            good_sub_3_count+=1
          elsif value=='3' and (key== 'notes_sub1'or key=='knw_sub4'or key=='cla_sub4' or key=='wil_sub4' or key=='class_sub4' or key=='lec_sub4' or key=='pre_sub4' or key=='enc_sub4' or key=='board_sub4' or key=='beh_sub4' or key== 'sinc_sub4' or key=='regu_sub4' or key=='ote_sub4')
            good_sub_4_count+=1
          elsif value=='3' and (key== 'notes_sub1'or key=='knw_sub5'or key=='cla_sub5' or key=='wil_sub5' or key=='class_sub5' or key=='lec_sub5' or key=='pre_sub5' or key=='enc_sub5' or key=='board_sub5' or key=='beh_sub5' or key== 'sinc_sub5' or key=='regu_sub5' or key=='ote_sub5')
            good_sub_5_count+=1
          elsif value=='3' and (key== 'notes_sub1'or key=='knw_sub6'or key=='cla_sub6' or key=='wil_sub6' or key=='class_sub6' or key=='lec_sub6' or key=='pre_sub6' or key=='enc_sub6' or key=='board_sub6' or key=='beh_sub6' or key== 'sinc_sub6' or key=='regu_sub6' or key=='ote_sub6')
            good_sub_6_count+=1

          elsif value=='1' and (key=='knw_sub1'or key=='cla_sub1' or key=='wil_sub1' or key=='class_sub1' or key=='lec_sub1' or key=='pre_sub1' or key=='enc_sub1' or key=='board_sub1' or key=='beh_sub1' or key== 'sinc_sub1' or key=='regu_sub1' or key=='ote_sub1')
            fair_sub_1_count+=1
          elsif value=='1' and (key=='knw_sub2'or key=='cla_sub2' or key=='wil_sub2' or key=='class_sub2' or key=='lec_sub2' or key=='pre_sub2' or key=='enc_sub2' or key=='board_sub2' or key=='beh_sub2' or key== 'sinc_sub2' or key=='regu_sub2' or key=='ote_sub2')
            fair_sub_2_count+=1
          elsif value=='1' and (key=='knw_sub3'or key=='cla_sub3' or key=='wil_sub3' or key=='class_sub3' or key=='lec_sub3' or key=='pre_sub3' or key=='enc_sub3' or key=='board_sub3' or key=='beh_sub3' or key== 'sinc_sub3' or key=='regu_sub3' or key=='ote_sub3')
            fair_sub_3_count+=1
          elsif value=='1' and (key=='knw_sub4'or key=='cla_sub4' or key=='wil_sub4' or key=='class_sub4' or key=='lec_sub4' or key=='pre_sub4' or key=='enc_sub4' or key=='board_sub4' or key=='beh_sub4' or key== 'sinc_sub4' or key=='regu_sub4' or key=='ote_sub4')
            fair_sub_4_count+=1
          elsif value=='1' and (key=='knw_sub5'or key=='cla_sub5' or key=='wil_sub5' or key=='class_sub5' or key=='lec_sub5' or key=='pre_sub5' or key=='enc_sub5' or key=='board_sub5' or key=='beh_sub5' or key== 'sinc_sub5' or key=='regu_sub5' or key=='ote_sub5')
            fair_sub_5_count+=1
          elsif value=='1' and (key=='knw_sub6'or key=='cla_sub6' or key=='wil_sub6' or key=='class_sub6' or key=='lec_sub6' or key=='pre_sub6' or key=='enc_sub6' or key=='board_sub6' or key=='beh_sub6' or key== 'sinc_sub6' or key=='regu_sub6' or key=='ote_sub6')
            fair_sub_6_count+=1

          elsif value=='0' and (key == 'norms_sub1'or key=='knw_sub1'or key=='cla_sub1' or key=='wil_sub1' or key=='class_sub1' or key=='lec_sub1' or key=='pre_sub1' or key=='enc_sub1' or key=='board_sub1' or key=='beh_sub1' or key== 'sinc_sub1' or key=='regu_sub1' or key=='ote_sub1')
            poor_sub_1_count+=1
          elsif value=='0' and (key == 'norms_sub2'or key=='knw_sub2'or key=='cla_sub2' or key=='wil_sub2' or key=='class_sub2' or key=='lec_sub2' or key=='pre_sub2' or key=='enc_sub2' or key=='board_sub2' or key=='beh_sub2' or key== 'sinc_sub2' or key=='regu_sub2' or key=='ote_sub2')
            poor_sub_2_count+=1
          elsif value=='0' and (key == 'norms_sub3'or key=='knw_sub3'or key=='cla_sub3' or key=='wil_sub3' or key=='class_sub3' or key=='lec_sub3' or key=='pre_sub3' or key=='enc_sub3' or key=='board_sub3' or key=='beh_sub3' or key== 'sinc_sub3' or key=='regu_sub3' or key=='ote_sub3')
            poor_sub_3_count+=1
          elsif value=='0' and (key == 'norms_sub4'or key=='knw_sub4'or key=='cla_sub4' or key=='wil_sub4' or key=='class_sub4' or key=='lec_sub4' or key=='pre_sub4' or key=='enc_sub4' or key=='board_sub4' or key=='beh_sub4' or key== 'sinc_sub4' or key=='regu_sub4' or key=='ote_sub4')
            poor_sub_4_count+=1
          elsif value=='0' and (key == 'norms_sub5'or key=='knw_sub5'or key=='cla_sub5' or key=='wil_sub5' or key=='class_sub5' or key=='lec_sub5' or key=='pre_sub5' or key=='enc_sub5' or key=='board_sub5' or key=='beh_sub5' or key== 'sinc_sub5' or key=='regu_sub5' or key=='ote_sub5')
            poor_sub_5_count+=1
          elsif value=='0' and (key == 'norms_sub6'or key=='knw_sub6'or key=='cla_sub6' or key=='wil_sub6' or key=='class_sub6' or key=='lec_sub6' or key=='pre_sub6' or key=='enc_sub6' or key=='board_sub6' or key=='beh_sub6' or key== 'sinc_sub6' or key=='regu_sub6' or key=='ote_sub6')
            poor_sub_6_count+=1


          end
        end

        #now calculate subtotals

        sub1_total = excellent_sub_1_count*5 + good_sub_1_count*3 + fair_sub_1_count*1
        sub2_total = excellent_sub_2_count*5 + good_sub_2_count*3 + fair_sub_2_count*1
        sub3_total = excellent_sub_3_count*5 + good_sub_3_count*3 + fair_sub_3_count*1
        sub4_total = excellent_sub_4_count*5 + good_sub_4_count*3 + fair_sub_4_count*1
        sub5_total = excellent_sub_5_count*5 + good_sub_5_count*3 + fair_sub_5_count*1
        sub6_total = excellent_sub_6_count*5 + good_sub_6_count*3 + fair_sub_6_count*1

        #update the database with these totals and individual counts
        redirect_to main_index_path
      end
    end
end