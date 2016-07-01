require 'rspec/expectations'
class JqueryLoginPage
  include PageObject
  include RSpec::Matchers

  url = CONFIGFILE['global']['url']
  direct_url(url)

  def verify_page_header
    @@page_header = @browser.find_element(:link_text, "jQuery UI")
    expect(@@page_header.displayed?).to be_truthy

    if @@page_header.text == 'jQuery UI'
      @@page_header.click
      $log.info("Page Header found")
    else
      $log.error("Page Header is not found")
      raise Exception.new("Unable to found page Header")
    end
  end


end


