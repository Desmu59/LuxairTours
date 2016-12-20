class CommonPage
  include PageObject

  div(:toolbar, :id => 'toolbar')

  div(:language_dropdown){
    div_element(:id => 'toolbar').div_element(:class => 'right').div_element(:class => 'dropdown language-menu')
  }
  link(:language_select_FR, :link_text => 'FR')
  link(:language_select_EN, :link_text => 'EN')
  link(:language_select_DE, :link_text => 'DE')
end