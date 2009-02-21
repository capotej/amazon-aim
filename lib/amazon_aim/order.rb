module AmazonAIM

  class Order < Struct.new(:payments_status, 
                           :order_id, 
                           :order_item_id, 
                           :payments_date, 
                           :payments_transaction_id, 
                           :item_name, 
                           :listing_id, 
                           :sku, 
                           :price, 
                           :shipping_free,
                           :quantity_purchased,
                           :total_price,
                           :purchase_date,
                           :batch_id,
                           :buyer_email,
                           :buyer_name,
                           :recipient_name,
                           :ship_address_1,
                           :ship_address_2,
                           :ship_city,
                           :ship_state,
                           :ship_zip,
                           :ship_country,
                           :special_comments,
                           :upc,
                           :ship_method)
                                        
    arr = Array.new
    26.times { arr << :to_s }
    CONVERTER = arr

    def self.[](line)
      new *CONVERTER.zip(line.split("\t")).map { |c, v|
        unless v.nil? or v.empty?
          v.send(c)
        end
      }
    end

  
  end
  
  
end
