# this contains the code for every page within pages
class PagesController < ApplicationController

# back end code for pages/index
  def index
  end

# back end code for pages/index
  def home
  end

# back end code for pages/index
def profile
    # we need to grab the username from the URL as :id
  if (User.find_by_username(params[:id]))
    @username = params[:id]
  else
    #redirect to 404
    redirect_to root_path, :notice=> "User not found!"
    
  end
end
# back end code for pages/index
  def explore
  end
end
