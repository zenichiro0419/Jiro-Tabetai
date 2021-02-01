module AuthenticationMacros
  def login
    let(:jirolian) { create(:jirolian) }
    before do
      sign_in(jirolian)
    end
  end
end
