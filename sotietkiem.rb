require 'uuid'
class SoTietKiem
  # def initialize(no, type, owner, owner_id, issued_date, amount)
  #   @no, @type, @owner, @owner_id, @issued_date, @amount = no, type, owner, owner_id, issued_date, amount
  # end
  @id
  @no
  @type
  @owner
  @owner_id
  @issued_date
  @amount

  def input
    @id = UUID.new.generate
    @issued_date = Time.new

    print "input type: "
    @type = gets.to_s
    print "input owner: "
    @owner = gets.to_s
    print "input owner id: "
    @owner_id = gets.to_i
    # @issued_date
    print "input amount: "
    @amount = gets.to_f
  end

  def get
    puts "#@id - #@type - #@owner - #@owner_id - #@issued_date - #@amount"
  end
end

s1 = SoTietKiem. new
s1.input
s1.get