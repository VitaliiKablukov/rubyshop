class UserorderdescriptionsController < InheritedResources::Base
  private

  def userorderdescription_params
    params.require(:userorderdescription).permit(
      :userorder_id,
      :item_id,
      :quantity
    )
  end
end
