module Support
  class Controls

    def css_select( search_string)
      require 'nokogiri'
      page_html = Nokogiri::HTML.parse($browser.html)
      return page_html.css(search_string)
    end


    def javascript_popup (msg ="Paused. Click to resume the test.")
      $browser.execute_script( %{alert("Paused. Click to resume the test.");});
    end

    def page_info_meta
      #make an access list for links, buttons

      #Also do radios, checkboxes, dropdowns
      puts "def self.set_text_fields(change_hash={})"
      print "\tdefault_hash = {"
      $browser.text_fields.each{|t| print " \"#{t.id}\" => 'default_text'," }
      print " \"dummy_tail\" => nil}\n "

      puts "\tchange_hash.each_key{|t|"
      puts "\t\tif(default_hash[t]!=nil)"
      puts "\t\t\tdefault_hash[t] = change_hash[t]"
      puts "\t\tend"
      puts "\t}"

      puts "\tdefault_hash.each_key{|t|"
      puts "\t\t$browser.text_field(:id, t ).value = default_hash[t]"
      puts "\t}"
      puts "end"

      puts "def self.set_radios(change_hash={})"
      print "\tdefault_hash = {"
      $browser.radios.each{|t| print " \"#{t.id}\" => 'clear'," }
      print " \"dummy_tail\" => nil}\n "

      puts "\tchange_hash.each_key{|t|"
      puts "\t\tif(default_hash[t]!=nil)"
      puts "\t\t\tdefault_hash[t] = change_hash[t]"
      puts "\t\tend"
      puts "\t}"

      puts "\tdefault_hash.each_key{|t|"
      puts "\t if default_hash[t]== \"clear\""
      puts "\t\t$browser.radio(:id, t ).clear"
      puts "\t end"
      puts "\t if default_hash[t]== \"set\""
      puts "\t\t$browser.radio(:id, t ).set"
      puts "\t end"
      puts "\t}"
      puts "end"
    end

  end
end
