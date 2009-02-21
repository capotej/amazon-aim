module AmazonAIM
  
  class Listings
  
  def initialize(glob)
    @res = glob
  end
  
  def parse
    arr = Array.new
    @res.each do |line|
      if line.split("\t")[0] != "seller-sku"
        arr << Listing[line]
      end
    end
    arr
  end
  
end
  
end
