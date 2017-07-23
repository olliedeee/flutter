# this contains the code for every page within pages
class PagesController < ApplicationController

# back end code for pages/index
  def index
  end

# back end code for pages/index
  def home
      @posts = Post.all;
      @newPost = Post.new


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
  
  @posts = Post.all.where("user_id = ?", User.find_by_username(params[:id]).id);
  @newPost = Post.new
  @toFollow = User.all.last(5)
end


# back end code for pages/index
  def explore
      @posts = Post.all;
      @toFollow = User.all.last(5)
        @newPost = Post.new



  end
end
