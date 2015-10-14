class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :username, presence: false
  validates :firstname, presence: false
  validates :lastname, presence: false
  # validates :date_of_birth, presence: false
  # validates_date :date_of_birth, :before => lambda { 16.years.ago },
  #                              :before_message => "Vous devez avoir 16 ans"
  # validates_date :date_of_birth, :on_or_after => lambda { 125.years.ago },
  #                               :before_message => "Êtes-vous certain d'être né au 19ème siècle ?"
  # validates :sexe, presence: false, inclusion: {in: ["Male","Female"]}
  validates :address, presence: false
  validates :zip_code, presence: false
  validates :city, presence: false
  validates :phone_number, :phony_plausible => true, presence: false
  # validates :status, :inclusion => {:in => [true, false]}, presence: false
  validates :avg_rating_user, presence: false
  # validates :vin, :inclusion => {:in => [true, false]}
  # validates :boucherie, :inclusion => {:in => [true, false]}
  # validates :charcuterie, :inclusion => {:in => [true, false]}
  # validates :prix, :inclusion => {:in => [true, false]}
  # validates :legume, :inclusion => {:in => [true, false]}
  # validates :fruit, :inclusion => {:in => [true, false]}
  # validates :poisson, :inclusion => {:in => [true, false]}
  # validates :boutique, :inclusion => {:in => [true, false]}

  geocoded_by :full_street_address
  after_validation :geocode


  has_one :shopper
  has_many :orders

  def full_street_address
    [address, zip_code, city].compact.join(', ')
  end

  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" },
    :default_url => "https://i.imgur.com/CKKLWns.gif"

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/

  private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end


end
