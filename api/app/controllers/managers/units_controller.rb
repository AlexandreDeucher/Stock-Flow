module Managers
  class UnitsController < ApplicationController
    before_action :set_unit, only: %i[show update destroy]

    def index
      render json: UnitSerializer.new(Unit.all).serialize
    end

    def show
      render json: UnitSerializer.new(@unit).serialize
    end

    def create
      unit = Unit.new(create_and_update_params)

      if unit.save
        render json: UnitSerializer.new(unit).serialize, status: :created
      else
        render json: { errors: unit.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def update
      if @unit.update(create_and_update_params)
        render json: UnitSerializer.new(@unit).serialize
      else
        render json: { errors: @unit.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def destroy
      @unit.destroy
      head :no_content
    end

    private

    def set_unit
      @unit = Unit.find(params[:id])
    end

    def create_and_update_params
      params.require(:unit).permit(:name, :cnpj, :cep, :street, :street_number)
    end
  end
end
