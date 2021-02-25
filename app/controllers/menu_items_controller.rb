class MenuItemsController < ApplicationController
  before_action :set_jiro

  def edit
    menu_items = MenuItem.where(jiro_id: params[:jiro_id])
    @main_menu_items = menu_items.main_menu
    @option_menu_items = menu_items.option_menu
  end

  def update_main_menu
    menu_items = MenuItem.where(jiro_id: params[:jiro_id])

    @main_menu_items = menu_items.main_menu
    update_main_menu_items = push_update_main_menu_items(@main_menu_items)

    MenuItem.transaction do
      MenuItem.import(update_main_menu_items,
                      on_duplicate_key_update: [:name, :price, :noodle_quantity, :note, :topping1, :topping2, :topping3,
                                                :topping4, :topping5, :topping6, :topping7])
      redirect_to jiro_path(@jiro)
    rescue ActiveRecord::RecordInvalid
      render :show
    end
  end

  def update_option_menu
    @jiro = Jiro.find_by_id(params[:jiro_id])
    menu_items = MenuItem.where(jiro_id: params[:jiro_id])

    @option_menu_items = menu_items.option_menu
    update_option_menu_items = push_update_option_menu_items(@option_menu_items)

    MenuItem.transaction do
      MenuItem.import(update_option_menu_items, on_duplicate_key_update: [:name, :price])
      redirect_to jiro_path(@jiro)
    rescue ActiveRecord::RecordInvalid
      render :show
    end
  end

  private

  def set_jiro
    @jiro = Jiro.find(params[:jiro_id])
  end

  def push_update_main_menu_items(main_menu_items)
    update_main_menu_items = []
    main_menu_items.each do |main_menu_item|
      main_menu_item.name = main_menu_items_params(main_menu_item.id)[:name]
      main_menu_item.price = main_menu_items_params(main_menu_item.id)[:price]
      main_menu_item.noodle_quantity = main_menu_items_params(main_menu_item.id)[:noodle_quantity]
      main_menu_item.note = main_menu_items_params(main_menu_item.id)[:note]
      main_menu_item.topping1 = main_menu_items_params(main_menu_item.id)[:topping1]
      main_menu_item.topping2 = main_menu_items_params(main_menu_item.id)[:topping2]
      main_menu_item.topping3 = main_menu_items_params(main_menu_item.id)[:topping3]
      main_menu_item.topping4 = main_menu_items_params(main_menu_item.id)[:topping4]
      main_menu_item.topping5 = main_menu_items_params(main_menu_item.id)[:topping5]
      main_menu_item.topping6 = main_menu_items_params(main_menu_item.id)[:topping6]
      main_menu_item.topping7 = main_menu_items_params(main_menu_item.id)[:topping7]
      update_main_menu_items << main_menu_item
    end
  end

  def push_update_option_menu_items(option_menu_items)
    update_option_menu_items = []
    option_menu_items.each do |option_menu_item|
      option_menu_item.name = option_menu_items_params(option_menu_item.id)[:name]
      option_menu_item.price = option_menu_items_params(option_menu_item.id)[:price]
      update_option_menu_items << option_menu_item
    end
  end

  def main_menu_items_params(menu_item_id)
    params[:menu_item][:main_menu_item][menu_item_id.to_s].permit(:name, :price, :noodle_quantity, :note, :topping1, :topping2, :topping3,
                                                                  :topping4, :topping5, :topping6, :topping7).merge(jiro_id: params[:jiro_id])
  end

  def option_menu_items_params(menu_item_id)
    params[:menu_item][:option_menu_item][menu_item_id.to_s].permit(:name, :price).merge(jiro_id: params[:jiro_id])
  end
end
