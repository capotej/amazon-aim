module AmazonAIM

  class Interface

    
    def initialize(acct, password)
      @acct = acct
      @password = password
    end
    
    def request(u, x = nil, y = nil, data = nil)
      url = URI.parse(u)
      req = Net::HTTP::Post.new(url.path)
      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = (url.scheme == 'https')
      req.basic_auth @acct, @password
      if x != nil
        req.add_field x, y
      end
      if data != nil
        req.body = data
        req.content_type = "text/xml"
      end

      res = http.request(req)
    end
    
    
    def get_latest_reports
      r = get_reports('Order')
    end
    
    def get_latest_listings
      r = get_reports('OpenListingsLite').sort_by {|x| x.id }
      res = get_report(r.last.id)
      o = Listings.new(res.body)
      o.parse
    end

    
    def get_report(id)
      res = self.request("https://secure.amazon.com/exec/panama/seller-admin/download/report", "ReportID", id)
      o = Orders.new(res.body)
      o.parse
    end
    

    def generate_report(type)
      res = self.request("https://secure.amazon.com/exec/panama/seller-admin/manual-reports/generate-report-now", "ReportName", type)
    end
    
    def get_reports(type)
      res = self.request("https://secure.amazon.com/exec/panama/seller-admin/manual-reports/get-report-status", "ReportName", type)
      r = Reports.new(res.body)
      r.parse
    end
    
    def upload_inventory(data)
      res = self.request("https://secure.amazon.com/exec/panama/seller-admin/catalog-upload/add-modify-delete", "FileFormat", "TabDelimited", data)
      puts res.body
    end



  end

end
