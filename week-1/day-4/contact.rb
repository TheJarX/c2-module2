class Contact
  def initialize(name, phone)
    @name = name
    @phone = phone
  end

  def get_name()
    @name
  end

  def set_name!(name)
    if name.empty?
      false
    end

    @name = name
    true
  end

  def get_phone()
    @phone
  end

  def set_phone!(phone)
    if phone.empty?
      false
    end

    @phone = phone
    true
  end
end
