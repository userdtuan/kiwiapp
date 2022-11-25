class OrdersController < ApplicationController
  before_action :set_order, only: %i[ show edit update destroy checkout ]

  def checkout
    @order_details = OrderDetail.where("order_id=?",@order.id)
    user = User.find(@order.user_id)
    @total_price = 0
    @price = 0
    @order_details.each do |item|
      book_price = Book.find(item.book_id).price
      @total_price+=book_price*item.quantity
    end
    @price = @total_price*(100-User.levels[user.level])
  end
  # GET /orders or /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1 or /orders/1.json
  def show
    @order_details = OrderDetail.where("order_id=?",params[:id])
    @order_detail = OrderDetail.new
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders or /orders.json
  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to order_url(@order), notice: "Order was successfully created." }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1 or /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to order_url(@order), notice: "Order was successfully updated." }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1 or /orders/1.json
  def destroy
    order_details = OrderDetail.where("order_id=?",@order.id)
    order_details.each do |o|
      o.destroy
    end
    @order.destroy

    respond_to do |format|
      format.html { redirect_to orders_url, notice: "Order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:user_id, :address)
    end
end
