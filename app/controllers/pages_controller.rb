class PagesController < ApplicationController
  def home
    @size = params[:size]&.to_i
    if @size && (1..12).include?(@size)
      render :home
    else
      flash[:alert] = "Please enter a valid number between 1 and 12."
      render :home, status: :unprocessable_entity
    end

  end
end
