#!/usr/bin/env ruby
      
# Copyright (c) 2009 Cory Ondrejka. All rights reserved.
# See License.txt for licensing details.

require "#{File.dirname(__FILE__)}/../testing_file_support"

describe BalsamiqControlParser do
  it "properly handles hslider" do
    data = <<-EOF
            <mockup version="1.0" skin="sketch">
      <controls>
        <control controlID="0" controlTypeID="com.balsamiq.mockups::HSlider" x="34" y="21" w="-1" h="-1" zOrder="0" locked="false" isInGroup="-1"/>
        <control controlID="1" controlTypeID="com.balsamiq.mockups::HSlider" x="33" y="40" w="170" h="-1" zOrder="1" locked="false" isInGroup="-1"/>
      </controls>
    </mockup>


    EOF
    html = <<-EOF
    <?xml version="1.0" encoding="UTF-8"?>
<!-- Generated by Balsamiq Exporter -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="reset.css" />
    <title>Balsamiq</title>
    <script type="text/javascript">
    </script>
  </head>

  <body>
    <div class="HSlider" id="HSlider0"
        style="position: absolute; font-size:10pt; text-align: left; left: 34px; top: 21px; width: 43px; height: 9px; z-index: 0">
    </div>
    <div class="HSlider" id="HSlider1"
        style="position: absolute; font-size:10pt; text-align: left; left: 33px; top: 40px; width: 170px; height: 9px; z-index: 1">
    </div>
  </body>
</html>

    EOF
    css = <<-EOF

    EOF
    js = <<-EOF

    EOF
    filename = "hslider"
    TestingFileSupport::test_elements(filename, data, html, css, js, false)
  end

end
