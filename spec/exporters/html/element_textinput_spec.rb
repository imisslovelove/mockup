#!/usr/bin/env ruby
      
# Copyright (c) 2009 Cory Ondrejka. All rights reserved.
# See License.txt for licensing details.

require "#{File.dirname(__FILE__)}/../testing_file_support"

describe BalsamiqControlParser do
  it "properly handles textinput" do
    data = <<-EOF
            <mockup version="1.0" skin="sketch">
      <controls>
        <control controlID="41" controlTypeID="com.balsamiq.mockups::TextInput" x="55" y="29" w="-1" h="-1" zOrder="0" locked="false" isInGroup="-1">
          <controlProperties>
            <text>Some%20text</text>
          </controlProperties>
        </control>
        <control controlID="42" controlTypeID="com.balsamiq.mockups::TextInput" x="56" y="69" w="-1" h="-1" zOrder="1" locked="false" isInGroup="-1">
          <controlProperties>
            <text>A%20larger%20space%20for%20input</text>
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
    <div class="TextInput" id="TextInput41"
        style="position: absolute; display: table; left: 55px; top: 29px; width: 72px; height: 27px;
        z-index: 0; outline: none;border: 1px solid #010101; ">
        <input style="background-color: transparent" name=search type="text" onKeyPress="" value="Some text"></input>
    </div>
    <div class="TextInput" id="TextInput42"
        style="position: absolute; display: table; left: 56px; top: 69px; width: 72px; height: 27px;
        z-index: 1; outline: none;border: 1px solid #010101; ">
        <input style="background-color: transparent" name=search type="text" onKeyPress="" value="A larger space for input"></input>
    </div>
  </body>
</html>

    EOF
    css = <<-EOF
    /* Generated by Balsamiq Exporter */
* {
  vertical-align: baseline;
  font-weight: inherit;
  font-family: inherit;
  font-style: inherit;
  font-size: 100%;
  border: 0 none;
  outline: 0;
  padding: 0;
  margin: 0;
}

body {
  background-color: #f8f4ed;
  font-family: "Comic Sans MS", Arial,sans-serif;
  color: #010101;
}

div {
  background-color: #ffffff;
  outline: 2px solid #202028;
  text-align: center;
}

a {
  color:#0101ff;
}

a:link {
  color:#0101ff;
}

a:hover {
  color:#FD0101;
}

    EOF
    js = <<-EOF
    /* Generated by Balsamiq Exporter
/* Simon Willison's cool hack to build out multiple onload events */
function addLoadEvent(func) 
{
  var oldonload = window.onload;
  if (typeof window.onload != 'function') 
  {
    window.onload = func;
  } 
  else 
  {
    window.onload = function() 
    {
      if (oldonload) 
      {
        oldonload();
      }
      func();
    }
  }
}

    EOF
    filename = "textinput"
    TestingFileSupport::test_elements(filename, data, html, css, js, false)
  end

end
