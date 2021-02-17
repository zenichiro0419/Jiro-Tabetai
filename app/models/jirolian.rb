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
class Jirolian < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :favorite_posts, dependent: :destroy
  has_many :wanna_eat_statuses, dependent: :destroy
  has_many :have_eaten_statuses, dependent: :destroy
  has_many :relationships
  has_many :followings, through: :relationships, source: :follow
  has_many :reverse_of_relationships, class_name: 'Relationship', foreign_key: 'follow_id'
  has_many :followers, through: :reverse_of_relationships, source: :jirolian
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable, :trackable, :omniauthable, omniauth_providers: [:twitter]

  enum gender: {male: 0, female: 1, unanswered: 2}

  validates :username, presence: true

  def follow(other_jirolian)
    relationships.find_or_create_by(follow_id: other_jirolian.id) unless self == other_jirolian
  end

  def unfollow(other_jirolian)
    relationship = relationships.find_by(follow_id: other_jirolian.id)
    relationship.destroy if relationship
  end

  def following?(other_jirolian)
    followings.include?(other_jirolian)
  end
end
