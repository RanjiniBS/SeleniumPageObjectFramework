Given(/^user should navigate to Jquery UI application$/) do
  visit_page JqueryLoginPage
end

Then(/^user able to verify Jquery UI Page Header$/) do
  on_page JqueryLoginPage do |login_page|
    login_page.verify_page_header
  end
end
