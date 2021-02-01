require 'rails_helper'

RSpec.describe JiroliansController, type: :controller do
  login

  describe '#show' do
    context 'hoge' do
      before do
        get :show, params: {id: jirolian.id}
      end
      it { expect(response.status).to eq(200) }
      it { expect(response).to render_template :show }
    end
  end

  describe '#edit' do
    before { get :edit, params: {id: jirolian.id} }
    it { expect(response.status).to eq(200) }
    it { expect(response).to render_template :edit }
    it { expect(assigns(:jirolian)).to eq(jirolian) }
  end

  describe '#update' do
    context 'valid update' do
      before do
        patch :update,
              params: {
                id: jirolian.id,
                jirolian: {
                  username: 'jiro',
                  sex: 1,
                  birth_date: '1992-05-20 00:00:00',
                  home_jiro: '千里眼',
                  introduction: 'マシマシが必須です。',
                  hp_url: 'https://www.instagram.com',
                  approved_favorited: false
                }
              }
      end
      it { expect(jirolian.reload.username).to eq('jiro') }
      it { expect(jirolian.reload.sex).to eq(1) }
      it { expect(jirolian.reload.birth_date).to eq('1992-05-20 00:00:00') }
      it { expect(jirolian.reload.home_jiro).to eq('千里眼') }
      it { expect(jirolian.reload.introduction).to eq('マシマシが必須です。') }
      it { expect(jirolian.reload.hp_url).to eq('https://www.instagram.com') }
      it { expect(jirolian.reload.approved_favorited).to eq(false) }
      it { expect(response.status).to eq(302) }
      it { expect(response.status).to redirect_to(assigns(:jirolian)) }
    end
  end
  context 'invalid update' do
    before do
      patch :update,
            params: {
              id: jirolian.id,
              jirolian: {
                username: nil,
                sex: 1,
                birth_date: '1992-05-20 00:00:00',
                home_jiro: '千里眼',
                introduction: 'マシマシが必須です。',
                hp_url: 'https://www.instagram.com',
                approved_favorited: false
              }
            }
    end
    it { expect(jirolian.reload.username).to eq(jirolian.username) }
    it { expect(jirolian.reload.username).not_to eq(nil) }
    it { expect(jirolian.reload.sex).to eq(jirolian.sex) }
    it { expect(jirolian.reload.birth_date).to eq(jirolian.birth_date) }
    it { expect(jirolian.reload.home_jiro).to eq(jirolian.home_jiro) }
    it { expect(jirolian.reload.introduction).to eq(jirolian.introduction) }
    it { expect(jirolian.reload.hp_url).to eq(jirolian.hp_url) }
    it { expect(jirolian.reload.approved_favorited).to eq(jirolian.approved_favorited) }
    it { expect(response).to render_template :edit }
  end
end
