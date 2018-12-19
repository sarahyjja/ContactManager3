class Contact
  attr_accessor :first_name, :last_name, :balance

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @balance = 100
  end

end
