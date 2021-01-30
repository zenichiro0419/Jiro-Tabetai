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
#  home_jiro              :string(255)
#  hp_url                 :string(255)
#  introduction           :text(65535)
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :string(255)
#  locked_at              :datetime
#  provider               :string(255)
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string(255)
#  sex                    :integer
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
class Jirolian < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable, :trackable, :omniauthable, omniauth_providers: [:twitter]
end
