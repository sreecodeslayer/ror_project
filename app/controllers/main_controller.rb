class MainController < ApplicationController
  def index
  end

  def login
	if request.post?
		redirect_to admin_index_path
	end
  end

  def register
  end

  def aboutus
  end

  def logout
  end
end
