# == Schema Information
#
# Table name: jirolians
#
#  id                     :bigint           not null, primary key
#  approved_favorited     :boolean
#  birth_date             :datetime
#  confirmation_sent_at   :datetime
#  confirmation_token     :string(255)
#  confirmed_at           :datetime
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :string(255)
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  failed_attempts        :integer          default(0), not null
#  gender                 :integer
#  home_jiro              :string(255)
#  hp_url                 :string(255)
#  image                  :string(255)
#  introduction           :text(65535)
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :string(255)
#  locked_at              :datetime
#  provider               :string(255)
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string(255)
#  sign_in_count          :integer          default(0), not null
#  uid                    :string(255)
#  unconfirmed_email      :string(255)
#  unlock_token           :string(255)
#  username               :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_jirolians_on_confirmation_token    (confirmation_token) UNIQUE
#  index_jirolians_on_email                 (email) UNIQUE
#  index_jirolians_on_reset_password_token  (reset_password_token) UNIQUE
#  index_jirolians_on_unlock_token          (unlock_token) UNIQUE
#
FactoryBot.define do
  factory :jirolian do
    email { 'jiro@example.com' }
    password { 'asdfghj' }
    confirmation_sent_at { '2020-04-18 00:00:00' }
    confirmation_token { 'asdfghjk' }
    confirmed_at { '2020-04-19 00:00:00' }
    encrypted_password { 'jirojiro' }
    username { 'user' }
    gender { 0 }
    home_jiro { 'jiro' }
    birth_date { '1991-04-19 00:00:00' }
    hp_url { 'https://twitter.com/home' }
    introduction { 'いつもマシマシ' }
    approved_favorited { true }
  end
end
