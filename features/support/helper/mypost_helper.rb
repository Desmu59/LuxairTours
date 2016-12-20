module MyPostHelper

  def login
    on(LoginPage).login_with 'julien.desmulier', 'drupal8'
  end

  def wait_on_for  page, element
    on(page).wait_until(15, "Call not returned within 15 seconds") do
      element.when_visible
    end
  end

  def visit_page_and_wait_for page, element
    visit page

    wait_on_for page, element
  end

  def change_language page, language
    case language
      when 'FR'
        on(page).language_select_FR_element.click
      when 'EN'
        on(page).language_select_EN_element.click
      when 'DE'
        on(page).language_select_DE_element.click
    end
  end

  def verify_language page, text
    on(page).forgot_password_element.text.should == text
  end

end