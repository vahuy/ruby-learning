class LuanVan
  def initialize(ma, ten, sv, hd, nam)
    @ma, @ten, @sv, @hd, @nam = ma, ten, sv, hd, nam
  end

  def hello
    puts "ma #{@ma} ten #{@ten}"
    puts "nam #{@nam}"
  end
end

lv1 = LuanVan.new(1,"covid","tui", "ong",2019)
lv1.hello