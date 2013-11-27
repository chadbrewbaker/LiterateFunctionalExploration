module SearchEngines
  module GooglePage

  def  self.search_for(query = "cats")
        $browser.text_area( :title,'Search').value= query
        $browser.link(:text, 'Google Search').click

  end

  end
end