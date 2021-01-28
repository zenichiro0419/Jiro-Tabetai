require 'rails_helper'

RSpec.describe BusinessHoursController, type: :controller do
  let!(:jiro) { FactoryBot.create(:jiro) }
  let!(:business_hour) { FactoryBot.create(:business_hour, jiro_id: jiro.id) }
  let!(:open_sunday_lunch) { FactoryBot.attributes_for(:business_hour, :sunday, :lunch, :open) }
  let!(:holiday_sunday_lunch) { FactoryBot.attributes_for(:business_hour, :sunday, :lunch, :holiday) }

  describe '#edit' do
    context 'hoge' do
      before { get :edit, params: {jiro_id: jiro.id} }
      it { expect(response.status).to eq(200) }
      it { expect(response).to render_template :edit }
    end
  end

  describe '#update' do
    before do
      patch :update,
            params: {
              jiro_id: jiro.id,
              business_hour: {
                business_hour: {
                  business_hour.id.to_s => open_sunday_lunch
                }
              }
            }
    end
    it { expect(business_hour.reload.is_holiday).to eq(open_sunday_lunch[:is_holiday]) }
    it { expect(business_hour.reload.start_at).to eq(open_sunday_lunch[:start_at]) }
    it { expect(business_hour.reload.end_at).to eq(open_sunday_lunch[:end_at]) }
  end
end
