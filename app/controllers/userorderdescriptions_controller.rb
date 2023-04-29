class UserorderdescriptionsController < InheritedResources::Base
  def index
    @user_order_description = UserOrderDescription.all
  end

  def show
  end

  def new
    @user_order_description = UserOrderDescription.new
  end

  def edit
  end

  def create
    @user_order_description =
      UserOrderDescription.new(user_order_description_params)

    respond_to do |format|
      if @user_order_description.save
        format.html do
          redirect_to @user_order_description,
                      notice: "User order description was successfully created."
        end
        format.json do
          render :show, status: :created, location: @user_order_description
        end
      else
        format.html { render :new }
        format.json do
          render json: @user_order_description.errors,
                 status: :unprocessable_entity
        end
      end
    end
  end

  def update
    respond_to do |format|
      if @user_order_description.update(user_order_description_params)
        format.html do
          redirect_to item_url(@user_order_description),
                      notice: "Item was successfully updated."
        end
        format.json do
          render :show, status: :ok, location: @user_order_description
        end
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json do
          render json: @user_order_description.errors,
                 status: :unprocessable_entity
        end
      end
    end
  end

  # DELETE /items/1 or /items/1.json
  def destroy
    @user_order_description.destroy

    respond_to do |format|
      format.html do
        redirect_to user_order_description_url,
                    notice: "Item was successfully destroyed."
      end
      format.json { head :no_content }
    end
  end

  private

  def set_item
    @user_order_description = UserOrderDescription.find(params[:id])
  end
  def userorderdescription_params
    params.require(:userorderdescription).permit(
      :userorder_id,
      :item_id,
      :quantity
    )
  end
end
