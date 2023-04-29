class UserordersController < InheritedResources::Base
  private

  def userorder_params
    params.require(:userorder).permit(:user_id, :amount)
  end
end
