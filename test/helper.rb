libdir = File.dirname(File.dirname(__FILE__)) + '/lib'
$:.unshift libdir unless $:.include?(libdir)

require 'lib/amazon_aim'
include AmazonAIM

Spec::Runner.configure do |config|
  config.before(:each) {
    interface = mock("amazon")
    interface.stub!(:get_reports).and_return([1,5,3])
    
    @aim = interface
  }
end
