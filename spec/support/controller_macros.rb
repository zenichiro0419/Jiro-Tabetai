module ControllerMacros
  def login_user
    before(:each) do
      @request.env['devise.mapping'] = Devise.mappings[:jirolian]
      jirolian = FactoryBot.create(:jirolian)
      jirolian.confirm! # or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
      sign_in jirolian
    end
  end
end
