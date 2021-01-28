require 'rails_helper'

RSpec.describe JirosController, type: :controller do
  describe '#show' do
    let(:jiro) { FactoryBot.create(:jiro) }
    context 'hoge' do
      before { get :show, params: {id: jiro.id} }
      it { expect(response.status).to eq(200) }
      it { expect(response).to render_template :show }
      it { expect(assigns(:jiro)).to eq jiro }
    end
  end

  describe '#new' do
    before { get :new }
    it { expect(response.status).to eq(200) }
    it { expect(response).to render_template :new }
  end

  describe '#create' do
    context 'valid save' do
      subject(:post_jiro_params) do
        post :create,
             params: {jiro: {name: '千里眼', address: '東京都目黒区駒場４丁目６−８', 　access: '東北沢駅から徒歩10分',
                             is_parking_area: true, phone_number: '09012345678', hp_url: 'https://twitter.com/senrigaaan', seat_count: 6,
                             payment_method: 1, how_to_order: 1, call_timing: 1}}
      end
      it { expect { post_jiro_params }.to change { Jiro.count }.by(1) }
      it { expect { post_jiro_params }.to change { Facility.count }.by(1) }
      it { expect { post_jiro_params }.to change { BusinessHour.count }.by(14) }
      it { expect { post_jiro_params }.to change { MenuItem.count }.by(12) }
      it { expect(post_jiro_params.status).to eq(302) }
      it { expect(post_jiro_params.status).to redirect_to(assigns(:jiro)) }
    end

    context 'invalid save' do
      subject(:post_jiro_params) do
        post :create,
             params: {jiro: {name: nil, address: '東京都目黒区駒場４丁目６−８', 　access: '東北沢駅から徒歩10分', is_parking_area: true,
                             phone_number: '09012345678', hp_url: 'https://twitter.com/senrigaaan', seat_count: 6, payment_method: 1, how_to_order: 1, call_timing: 1}}
      end
      it { expect { post_jiro_params }.to change { Jiro.count }.by(0) }
      it { expect { post_jiro_params }.to change { Facility.count }.by(0) }
      it { expect { post_jiro_params }.to change { BusinessHour.count }.by(0) }
      it { expect { post_jiro_params }.to change { MenuItem.count }.by(0) }
      it { expect(post_jiro_params.status).to eq(200) }
      it { expect(post_jiro_params).to render_template :new }
    end
  end

  describe '#edit' do
    let(:jiro) { FactoryBot.create(:jiro) }
    context 'hoge' do
      before { get :edit, params: {id: jiro.id} }
      it { expect(response.status).to eq(200) }
      it { expect(response).to render_template :edit }
      it { expect(assigns(:jiro)).to eq(jiro) }
    end
  end

  describe '#update' do
    let!(:jiro) { FactoryBot.create(:jiro) }

    context 'valid update' do
      before { patch :update, params: {id: jiro.id, name: '用心棒'} }
      it { expect(jiro.reload.name).not_to eq('千里眼') }
      it { expect(jiro.reload.name).to eq('用心棒') }
      it { expect(response.status).to eq(302) }
      it { expect(response.status).to redirect_to(assigns(:jiro)) }
    end

    context 'invalid update' do
      before { patch :update, params: {id: jiro.id, name: nil} }
      it { expect(jiro.reload.name).not_to eq(nil) }
      it { expect(jiro.reload.name).to eq('千里眼') }
      it { expect(response).to render_template :edit }
      it { expect(assigns(:jiro)).to eq(jiro) }
    end
  end
end
