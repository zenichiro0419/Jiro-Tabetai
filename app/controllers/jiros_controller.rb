class JirosController < ApplicationController
  include RemakeParams

  def show
    @jiro = Jiro.find_by_id(params[:id])

    @facility = @jiro.facility
    @table_seasonings = create_table_seasonings_list(@facility)

    @main_menus = @jiro.menu.main_menu
    @toppings_list = create_toppings_list(@main_menus)
    @option_menus = @jiro.menu.option_menu

    @business_hour_wdays_list = @jiro.business_hour.group_by(&:wday)
  end

  def new
    @jiro = Jiro.new
  end

  def create
    ActiveRecord::Base.transaction do
      @jiro = Jiro.create(params_int(jiro_params))
      Facility.create(jiro_id: @jiro.id)

      business_hours = []
      (0..6).each do |wday|
        (1..2).each do |category|
          business_hours << BusinessHour.new(wday: wday, category: category, jiro_id: @jiro.id)
        end
      end
      BusinessHour.import(business_hours)
    # Menu.create(jiro_id: @jiro.id)
    rescue ActiveRecord::RecordInvalid
      # 具体的な処理はあとで考える
      render :show
    end
    redirect_to jiro_path(@jiro)
  end

  def edit
    @jiro = Jiro.find_by_id(params[:id])
  end

  def update
    @jiro = Jiro.find_by_id(params[:id])
    # TODO: Header作成時にflashを埋め込む。
    if @jiro.update_attributes(params_int(jiro_params))
      flash.notice = '更新が完了しました。'
      redirect_to jiro_path(@jiro)
    else
      flash.notice = '更新に失敗しました。'
      render action: :edit
    end
  end

  private

  # @pramas [Facility] facility
  # @return [Array]
  def create_table_seasonings_list(facility)
    [facility.seasoning1, facility.seasoning2, facility.seasoning3, facility.seasoning4,
     facility.seasoning5].uniq
  end

  # @pramas [MainMenu] main_menus
  # @return [Hash] => [integer] key, [Array] value
  def create_toppings_list(main_menus)
    toppings_list = {}
    main_menus.each do |main_menu|
      toppings = [main_menu.topping1, main_menu.topping2, main_menu.topping3, main_menu.topping4, main_menu.topping5,
                  main_menu.topping6, main_menu.topping7]
      toppings_list.store(main_menu.id, toppings)
    end
    toppings_list
  end

  def jiro_params
    params.require(:jiro).permit(:name, :address, :access, :is_parking_area, :phone_number, :hp_url, :seat_count,
                                 :payment_method, :how_to_order, :call_timing)
  end
end
