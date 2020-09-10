#!/usr/bin/ruby

class Phanso
  def initialize(tu, mau)
    @tu, @mau = tu, mau
  end

  def hello
    puts "Hello Ruby! #{@tu} #{@mau}"
    c = @tu + @mau
    puts "result #{c}"
  end

  def get_tu
    @tu
  end

  def get_mau
    @mau
  end

  def get_phan_so
    c = @mau % @tu
    if c == 0
      tu = 1
      mau = @mau / @tu
      puts "#{tu}/#{mau}"
      cTu = tu
      cMau = mau
    else
      puts "#{@tu}/#{@mau}"
      cTu = @tu
      cMau = @mau
    end
    Phanso.new(cTu, cMau)
  end

  def cong(ps)
    puts "Phan so doi ung: #{ps.get_tu}/#{ps.get_mau}"

    tu = @tu * ps.get_mau + @mau * ps.get_tu
    mau = @mau * ps.get_mau
    psC = Phanso.new(tu, mau)
    psC.get_phan_so
  end

  def tru(ps)
    tu = @tu * ps.get_mau - @mau * ps.get_tu
    mau = @mau * ps.get_mau
    psC = Phanso.new(tu, mau)
    psC.get_phan_so
  end

  def nhan(ps)
    tu = @tu * ps.get_tu
    mau = @mau * ps.get_mau
    psC = Phanso.new(tu, mau)
    psC.get_phan_so
  end

  def chia (ps = Phanso)
    tu = @tu * ps.get_mau
    mau = @mau * ps.get_tu
    psC = Phanso.new(tu, mau)
    psC.get_phan_so
  end
end

# Now using above class to create objects
psA = Phanso.new(1,1)
psB = Phanso.new(1,4)

psA.cong psB
psA.tru psB
psA.nhan psB
psA.chia psB