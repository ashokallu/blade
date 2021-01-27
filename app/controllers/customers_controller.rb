class CustomersController < ApplicationController
  protect_from_forgery except: :index

  def index
    # binding.pry
    # head 400 and return
    res = {"message"=>"Device Registered Successfully", "status"=>1}
    render json: res
    # render json: {foo: 100, bar: 200}
    # redirect_to redirect_action_customers_path and return
    # respond_to do |format|
      # format.json { render json: Customer.limit(10) }
      # format.html { render plain: "A string response" }
    # end
  end

  def create
    binding.pry
    # head :ok
    # head 400 and return
    res = {"message"=>"Device Registered Successfully", "status"=>1}
    respond_to do |format|
      format.json { render json: res }
      format.html { head :ok }
    end
  end

  def redirect_action
    render plain: "CustomersController#redirect_action"
  end
end
