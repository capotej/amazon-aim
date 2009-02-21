module AmazonAIM
  
  class Listing < Struct.new(:seller_sku, :quantity, :price, :product_id)

    CONVERTER = [:to_s, :to_s, :to_s, :to_s]

    def self.[](line)
      new *CONVERTER.zip(line.split("\t")).map { |c, v|
        unless v.nil? or v.empty?
          v.gsub!("\n", "")
          v.send(c)
        end
      }
    end

  end

end