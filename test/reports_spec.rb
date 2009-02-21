require File.dirname(__FILE__) + '/helper'

describe Reports do

  it "should get a list of reports" do
    reports = @aim.get_reports('Order')
    reports.length.should > 0
  end


end
