#!/usr/bin/env ruby
      
# Copyright (c) 2009 Cory Ondrejka. All rights reserved.
# See License.txt for licensing details.

require "#{File.dirname(__FILE__)}/../testing_file_support"

describe BalsamiqControlParser do
  it "properly handles label" do
    data = <<-EOF
            <mockup version="1.0" skin="sketch">
      <controls>
        <control controlID="13" controlTypeID="com.balsamiq.mockups::Label" x="75" y="31" w="-1" h="-1" zOrder="0" locked="false" isInGroup="-1">
          <controlProperties>
            <text>Some%20text</text>
          </controlProperties>
        </control>
        <control controlID="14" controlTypeID="com.balsamiq.mockups::Label" x="73" y="63" w="-1" h="-1" zOrder="1" locked="false" isInGroup="-1">
          <controlProperties>
            <italic>true</italic>
            <bold>false</bold>
            <align>center</align>
            <text>A%20longer%20line%20of%20text</text>
            <size>18</size>
            <underline>true</underline>
            <color>128</color>
          </controlProperties>
        </control>
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
    <div class="Label" id="Label13";
        style="position: absolute; font-size:9pt; text-align: center; left: 75px; top: 31px;
        z-index: 0; outline: none; background-color: transparent; color: #010101;">
        <b>Some text</b>
    </div>
    <div class="Label" id="Label14";
        style="position: absolute; font-size:15pt; text-align: center; left: 73px; top: 63px;
        z-index: 1; outline: none; background-color: transparent; color: rgba(0,0,128,1.0);">
        <i><u>A longer line of text</u></i>
    </div>
  </body>
</html>

    EOF
    css = <<-EOF

    EOF
    js = <<-EOF

    EOF
    filename = "label"
    TestingFileSupport::test_elements(filename, data, html, css, js, false)
  end

end