require 'rails_helper'

RSpec.describe JiroliansController, type: :controller do
  login_user

  describe '#show' do
    let(:jirolian) { FactoryBot.create(:jirolian) }
    context 'hoge' do
      before { get :show, params: {id: jirolian.id} }
      it { expect(response.status).to eq(200) }
      it { expect(response).to render_template :show }
      it { expect(assigns(:jirolian)).to eq jirolian }
    end
  end

  xdescribe '#edit' do
  end

  xdescribe '#update' do
  end
end
