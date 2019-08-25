# frozen_string_literal: true

module Api
  module V1
    class FoodCategoriesController < ApplicationController
      before_action :set_food_category, only: %i[show]

      def index
        @food_categories = FoodCategory.all
        render json: { status: :ok, data: @food_categories }
      end

      def show
        render json: { status: :ok, data: @food_category }
      end

      private

      def set_food_category
        @food_category = FoodCategory.find(params[:id])
      end
    end
  end
end
