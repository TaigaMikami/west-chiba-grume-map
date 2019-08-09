# frozen_string_literal: true

module Api
  module V1
    class ShopsController < ApplicationController
      before_action :set_shop, only: %i[show upfate destroy]

      def index
        @shops = Shop.all
        render json: { status: :ok, data: @shops }
      end

      def show
        render json: { status: :ok, data: @shop }
      end

      def create
        @shop = Shop.new(shop_params)
        if @shop.save
          render json: { status: :created, data: @shop }
        else
          render json: @shop.errors, status: :unprocessable_entity
        end
      end

      private

      def set_shop
        @shop = Shop.find(params[:id])
      end

      def shop_params
        params.permit(:name, :address, :lat, :lng, :description)
      end
    end
  end
end
