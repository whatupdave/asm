class WipsController < ApplicationController
  before_action { @product = Product.find }
  before_action { @wip = @product.wips.find{|w| w.number == params[:id].to_i } if params[:id] }

end