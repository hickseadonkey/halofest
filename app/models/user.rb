class User < ActiveRecord::Base
<<<<<<< HEAD
  before_save { self.email = email.downcase }
  before_create :create_remember_token
  validates :name, presence: true, length: { maximum: 50 }
=======
  # Include default devise modules. Others available are:
  # :registerable, :timeoutable and :omniauthable
  devise :database_authenticatable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable

  validates :name, presence: true
>>>>>>> 4d6b4168b8e32a6372a5f8bde7f594beec78bbf0
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false}

  has_many :rosters, :dependent => :destroy
  has_many :keepers
  has_secure_password
  validates :password, length: {minimum: 3 }

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.hash(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_token
      self.remember_token = User.hash(User.new_remember_token)
    end

end
