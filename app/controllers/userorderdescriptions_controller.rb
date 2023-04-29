class UserorderdescriptionsController < InheritedResources::Base
  def index
    userId = current_user.id
    @userorders = Userorder.where(user_id: userId)
    @userorderdescriptions =
      Userorderdescription.joins(:userorder).where(userorder: @userorders)
  end

  private

  def userorderdescription_params
    params.require(:userorderdescription).permit(
      :userorder_id,
      :item_id,
      :quantity
    )
  end
end
