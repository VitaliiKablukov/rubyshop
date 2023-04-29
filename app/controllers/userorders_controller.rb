class UserordersController < InheritedResources::Base
  def index
    @user_order = UserOrder.all
  end

  def show
  end

  def new
    @user_order = UserOrder.new
  end

  def edit
  end

  def new
    @user_order = UserOrder.new
  end
  def create
    @user_order = UserOrder.new(user_order_params)

    respond_to do |format|
      if @user_order.save
        format.html do
          redirect_to @user_order,
                      notice: "User order was successfully created."
        end
        format.json { render :show, status: :created, location: @user_order }
      else
        format.html { render :new }
        format.json do
          render json: @user_order.errors, status: :unprocessable_entity
        end
      end
    end
  end

  def update
    respond_to do |format|
      if @user_order.update(item_params)
        format.html do
          redirect_to item_url(@user_order),
                      notice: "Item was successfully updated."
        end
        format.json { render :show, status: :ok, location: @user_order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json do
          render json: @user_order.errors, status: :unprocessable_entity
        end
      end
    end
  end

  def destroy
    @user_order.destroy

    respond_to do |format|
      format.html do
        redirect_to items_url, notice: "Item was successfully destroyed."
      end
      format.json { head :no_content }
    end
  end

  private

  def set_item
    @user_order = UserOrder.find(params[:id])
  end

  def userorder_params
    params.require(:userorder).permit(:user_id, :amount)
  end
end
