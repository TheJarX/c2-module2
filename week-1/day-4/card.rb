class Card
  def initialize(type, bank, number, expiration, cvv, nfc)
    @type        = type
    @bank        = bank
    @number      = number
    @expiration  = expiration
    @cvv         = cvv
    @nfc         = nfc
  end

  def contacless_payment?()
    @nfc
  end
end
