class MenuItemsController < ApplicationController
  def edit
    @menu_items = MenuItem.where(jiro_id: params[:jiro_id])
  end

  def update
    binding.pry
    @jiro = Jiro.find_by_id(params[:jiro_id])
    @menu_items = MenuItem.where(jiro_id: params[:jiro_id])
    update_menu_items = []
    @menu_items.each do |menu_item|
      menu_item.name = menu_items_params(menu_item.id)[:name]
      menu_item.price = menu_items_params(menu_item.id)[:price]
      menu_item.noodle_quantity = menu_items_params(menu_item.id)[:noodle_quantity]
      menu_item.note = menu_items_params(menu_item.id)[:note]
      menu_item.topping1 = menu_items_params(menu_item.id)[:topping1]
      menu_item.topping2 = menu_items_params(menu_item.id)[:topping2]
      menu_item.topping3 = menu_items_params(menu_item.id)[:topping3]
      menu_item.topping4 = menu_items_params(menu_item.id)[:topping4]
      menu_item.topping5 = menu_items_params(menu_item.id)[:topping5]
      menu_item.topping6 = menu_items_params(menu_item.id)[:topping6]
      menu_item.topping7 = menu_items_params(menu_item.id)[:topping7]
      update_menu_items << menu_item
    end

    MenuItem.transaction do
      MenuItem.import(update_menu_items,
                      on_duplicate_key_update: [:name, :price, :noodle_quantity, :note, :topping1, :topping2, :topping3,
                                                :topping4, :topping5, :topping6, :topping7])
      redirect_to jiro_path(@jiro)
    rescue StandardError
      render :show
    end
  end

  private

  def menu_items_params(menu_item_id)
    params.require(:menu_item).require(:menu_item).require(menu_item_id.to_s)
          .permit(:name, :price, :noodle_quantity, :note, :topping1, :topping2, :topping3,
                  :topping4, :topping5, :topping6, :topping7).merge(jiro_id: params[:jiro_id])
  end
end
