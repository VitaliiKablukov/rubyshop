class UserordersController < InheritedResources::Base
  def index
    userId = current_user.id
    @userorders = Userorder.where(user_id: userId)
  end

  private

  def userorder_params
    params.require(:userorder).permit(:user_id, :amount)
  end
end
