class DrinksController < ApplicationController
  def create
    @drink = current_user.drinks.build(drink_params)

    if @drink.save
      redirect_to current_user
    else

    end
  end

  private

    def drink_params
      params.require(:drink).permit(:name, :user_id)
    end
end