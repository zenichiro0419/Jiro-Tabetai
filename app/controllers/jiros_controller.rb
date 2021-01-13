class JirosController < ApplicationController
  def show
    @jiro = Jiro.find(params[:id])
    @facility = @jiro.facility
    @table_seasonings = %w[@facility.seasoning1 @facility.seasoning2 @facility.seasoning3 @facility.seasoning4 @facility.seasoning5
                           @facility.seasoning6]
    @main_menus = @jiro.menu.main_menu
    @option_menus = @jiro.menu.option_menu
    business_hours = @jiro.business_hour.group_by(&:wday)
    @business_hour_list = create_business_hour_list(business_hours) if business_hours.present?
  end

  private

  # @params [Array] main_menu_ids
  # @return [Hash] toppings_list => [integer] key, [Array] value
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

  # @params [Hash] business_hours
  # @return [Hash] business_hour_list => [integer] key, [Hash] value
  def create_business_hour_list(business_hours)
    business_hour_list = {}
    (0..6).each do |wday|
      jiro_open_list = {}
      business_hours[wday].each do |business_hour|
        jiro_open_list.store(business_hour.category, [business_hour.start_at, business_hour.end_at])
      end
      business_hour_list.store(wday, jiro_open_list)
    end
    business_hour_list
  end
end
