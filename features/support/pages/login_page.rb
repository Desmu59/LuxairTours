class LoginPage < CommonPage

  page_url FigNewton.base_url + '/user'

  div(:identification_message){
    div_element(:id => 'login').div_element(:class => 'row container-header').div_element(:class => 'col-md-12').span_element(:class => 'ng-binding')
  }

  span(:logininvalid, :class => 'text-danger')

  text_field(:user_identification, :id => 'edit-name')
  text_field(:password, :id => 'edit-pass')
  link(:forgot_password, :href => 'https://www.mypost.lu/auth/mypostid-onboarding-web/reset?refurl=https%3A%2F%2Fwww.mypost.lu%2Fmypost-web-mobile%2F')
  button(:login, :class => 'button js-form-submit form-submit')

  def login_with(username='julien.desmulier', password='drupal8')
    self.user_identification = username
    self.password = password
    login
  end

end