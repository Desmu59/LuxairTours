class MainPage < CommonPage

  page_url FigNewton.base_url

  link(:my_usage, :href => '/mypost-web-mobile/infoconso')
  link(:options, :href => '/mypost-web-mobile/options')

  # div(:phone_number, :class => 'number ng-binding')
  div(:phone_number){
    # div_element(:class => 'row').div_element(:class => 'col-xs-7').div_element(:class => 'number ng-binding')
    div_element(:class => 'col-xs-7').div_element(:class => 'number ng-binding')
  }

end