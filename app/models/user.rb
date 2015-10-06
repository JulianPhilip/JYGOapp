class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :username, presence: true
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :birthdate, presence: true
  validates_date :birthdate, :before => lambda { 16.years.ago },
                               :before_message => "Vous devez être âgé de plus de 16 ans"
  validates_date :birthdate, :on_or_after => {125.years.ago},
                               :before_message => "Êtes-vous certain d'être né au 19ème siècle ?"
  validates :sexe, presence: true, inclusion: {in: ["Male","Female"]}
  validates :address, presence: true
end
