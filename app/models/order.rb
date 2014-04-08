class Order < ActiveRecord::Base 

  attr_accessible :order_date, :user_id 
  attr_accessor :card_number, :card_verification
   has_many :orderproducts 
  belongs_to :user 

  validate :validate_card, :on => :createOrder
 
  


def validate_card
    unless credit_card.valid?
      credit_card.errors.full_messages.each do |message|
        errors.add_to_base message
      end
    end
  end
  
  def credit_card
    @credit_card ||= ActiveMerchant::Billing::CreditCard.new(
      :type               => card_type,
      :number             => card_number,
      :verification_value => card_verification,
      :month              => card_expires_on.month,
      :year               => card_expires_on.year,
      :firstname         => firstname,
      :lastname          => lastname
    )
  end
  
end