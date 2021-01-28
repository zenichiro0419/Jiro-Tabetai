require 'rails_helper'

RSpec.describe MenuItemsController, type: :controller do
  let!(:jiro) { FactoryBot.create(:jiro) }
  let!(:main_menu_item) { FactoryBot.create(:menu_item, :main_menu, jiro_id: jiro.id) }
  let!(:option_menu_item) { FactoryBot.create(:menu_item, :option_menu, jiro_id: jiro.id) }

  describe '#edit' do
    context 'hoge' do
      before { get :edit, params: {jiro_id: jiro.id} }
      it { expect(response.status).to eq(200) }
      it { expect(response).to render_template :edit }
    end
  end

  describe '#update' do
    context 'main menu' do
      before do
        patch :update_main_menu,
              params: {
                jiro_id: jiro.id,
                menu_item: {
                  main_menu_item: {
                    main_menu_item.id.to_s => {
                      name: '冷やし中華',
                      price: 800,
                      noodle_quantity: 400,
                      note: '非乳化',
                      topping1: 'ホゲ',
                      topping2: 'フガ',
                      topping3: 'ピヨ',
                      topping4: 'パラ',
                      topping5: 'ピラ',
                      topping6: 'プラ',
                      topping7: 'ペラ'
                    }
                  }
                }
              }
      end
      it { expect(main_menu_item.reload.name).to eq('冷やし中華') }
      it { expect(main_menu_item.reload.price).to eq(800) }
      it { expect(main_menu_item.reload.noodle_quantity).to eq(400) }
      it { expect(main_menu_item.reload.note).to eq('非乳化') }
      it { expect(main_menu_item.reload.topping1).to eq('ホゲ') }
      it { expect(main_menu_item.reload.topping2).to eq('フガ') }
      it { expect(main_menu_item.reload.topping3).to eq('ピヨ') }
      it { expect(main_menu_item.reload.topping4).to eq('パラ') }
      it { expect(main_menu_item.reload.topping5).to eq('ピラ') }
      it { expect(main_menu_item.reload.topping6).to eq('プラ') }
      it { expect(main_menu_item.reload.topping7).to eq('ペラ') }
    end

    context 'main menu' do
      before do
        patch :update_main_menu,
              params: {
                jiro_id: jiro.id,
                menu_item: {
                  main_menu_item: {
                    main_menu_item.id.to_s => {
                      name: '豚追加',
                      price: 100
                    }
                  }
                }
              }
      end
      it { expect(main_menu_item.reload.name).to eq('豚追加') }
      it { expect(main_menu_item.reload.price).to eq(100) }
    end
  end
end
