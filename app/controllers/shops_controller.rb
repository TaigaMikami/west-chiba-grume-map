# frozen_string_literal: true

class ShopsController < ApplicationController
  before_action :set_shop, only: %i[show upfate destroy]

  def index
    @shops = Shop.all
    render json: @shops
  end

  def show
    render json: @shop
  end

  private

  def set_shop
    @shop = Shop.find(params[:id])
  end
end
