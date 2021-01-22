module MenuItemsHelper
  # @params [MenuItem]
  # @return [string]
  def show_main_or_option(menu_item)
    menu_item.is_main? ? 'メインメニュー' : 'オプションメニュー'
  end
end
