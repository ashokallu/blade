class ProductsController < ApplicationController

  # skip_forgery_protection only: [:foo]
  # skip_before_action :verify_authenticity_token, only: [:foo]

  def index
  end

  def show
  end

  def foo
    binding.pry
    respond_to do |format|
      format.json { render json: Customer.last }
      format.html
    end
    # binding.pry
    # render html: "<span>".html_safe
    # render plain: "OK"
    # render xml: {foo: 100, bar: 200}
    # render body: "raw"
    # render js: "console.log(100);"
    # render file: File.expand_path("app/views/products/foo.json")
    # render file: File.expand_path("app/views/products/foo.html.slim")
    # render file: File.expand_path("app/views/products/bar.html")
    # render file: File.expand_path("app/assets/images/apples/red_apple_potrait.jpg")
  end
end
