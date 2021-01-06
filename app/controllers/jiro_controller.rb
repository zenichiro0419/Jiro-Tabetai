class JiroController < ApplicationController
  def show
    @jiro = Jiro.find(params[:id])
    @table_seasonings = @jiro.table_seasoning.pluck(:name)
    @main_menus = @jiro.main_menu
    @option_menus = @jiro.option_menu
    @toppings_list = create_toppings_list(@main_menus.pluck(:id))
  end

  private

  # @params [Array] main_menu_ids
  # @return [Hash] toppings_list
  def create_toppings_list(main_menu_ids)
    toppings = Topping.where(main_menu_id: main_menu_ids)
    main_menu_ids = toppings.pluck(:main_menu_id).uniq
    toppings_list = {}

    main_menu_ids.each do |main_menu_id|
      topping_names = []
      toppings.each do |topping|
        topping_names.push(topping.name) if main_menu_id == topping.main_menu_id
      end
      toppings_list.store(main_menu_id, topping_names)
    end
    toppings_list
  end
end
