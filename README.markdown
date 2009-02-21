#AmazonAIM

This is a minimal implementaiton of the Amazon Inventory Management API. For now it supports orders, listings, and reports.

## Installation
Add this library directory to your load_path, and require amazon_aim

(gem coming soon)

## Usage
Mostly, you'll be working with an AmazonAIM::Interface object (which you instantiate with your auth details) that returns simple ostructs for the data you need

	       require 'amazon_aim'
	       aim = AmazonAIM::Interface.new('user', 'pass')
	       orders = aim.get_latest_orders
	       orders.inspect

## License and Author

Copyright 2009 Julio Capote (jcapote@gmail.com)

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
