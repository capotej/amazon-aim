module AmazonAIM
  
  class Orders
    
    def initialize(glob)
      @res = glob
    end
    
    def parse
      arr = Array.new
      @res.each do |line|
        if line.split("\t")[0] != "payments-status"
          arr << Order[line]
        end
      end
      arr
    end
    
  end
  
end
