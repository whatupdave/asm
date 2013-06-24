class ProductsController < ApplicationController
  before_action { @product = Product.find }

end