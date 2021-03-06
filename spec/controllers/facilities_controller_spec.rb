require 'rails_helper'

RSpec.describe FacilitiesController, type: :controller do
  let!(:jiro) { FactoryBot.create(:jiro) }
  let!(:facility) { FactoryBot.create(:facility, jiro_id: jiro.id) }

  describe '#edit' do
    context 'hoge' do
      before { get :edit, params: {jiro_id: jiro.id} }
      it { expect(response.status).to eq(200) }
      it { expect(response).to render_template :edit }
      # TODO: 何故か@facilityがnilになる。
      # it { expect(assigns(:facility)).to eq(facility) }
    end
  end

  describe '#update' do
    context 'valid update' do
      before do
        patch :update, params: {
          id: facility.id,
          jiro_id: jiro.id,
          is_apron: false,
          in_store_pending: 3,
          seasoning1: 'お酢'
        }
      end
      it { expect(facility.reload.is_apron).to eq(false) }
      it { expect(facility.reload.in_store_pending).to eq(3) }
      it { expect(facility.reload.seasoning1).to eq('お酢') }
      it { expect(response.status).to eq(302) }
      it { expect(response.status).to redirect_to(assigns(:jiro)) }
    end
  end
end
