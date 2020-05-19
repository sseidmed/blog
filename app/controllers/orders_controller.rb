class OrdersController < ApplicationController

  rescue_from ActiveRecord::RecordNotFound, with: :catch_not_found
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  layout 'order_layout'

  def index
    @orders = Order.all
  end

  def show
    # @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
      @order = Order.new(order_params)
      if @order.save
        # flash.notice = "The order record was created successfully."
        redirect_to @order
      else
        flash.now.alert = @order.errors.full_messages.to_sentence
        render :new
      end
    end

    def edit
      # @order = Order.find(params[:id])
    end

    def update
      # @order = Order.find(params[:id])
      if @order.update(order_params)
        flash.notice = "The order record was updated successfully."
        redirect_to @order
      else
        flash.now.alert = @order.errors.full_messages.to_sentence
        render :edit
      end
    end

    def destroy
      # @order = Order.find(params[:id])
      @order.destroy
      redirect_to orders_url
    end

    private

    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:product_name, :product_count, :customer_id)
    end

    def catch_not_found(e)
      Rails.logger.debug("We had a not found exception.")
      flash.alert = e.to_s
      redirect_to orders_path
    end



end
