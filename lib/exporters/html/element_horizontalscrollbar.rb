#!/usr/bin/env ruby
      
# Copyright (c) 2009 Cory Ondrejka. All rights reserved.
# See License.txt for licensing details.


# adds specific export_HorizontalScrollBar method into BalsamiqExportHTML

class BalsamiqExportHTML
  def export_HorizontalScrollBar(c)
    # note first text is included solely to properly size div (and then canvas)
    @html_body += <<-EOF
    <div class="#{c[:controlTypeID]}" id="#{c[:controlTypeID]}#{c[:controlID]}"
        style="position: absolute; font-size:10pt; text-align: left; left: #{c[:x]}px; top: #{c[:y]}px; width: #{c[:w]}px; height: #{c[:h]-2}px; z-index: #{c[:zOrder]}">
    </div>
    EOF
  end  
end
