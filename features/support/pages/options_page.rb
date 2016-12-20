class OptionsPage < CommonPage

  page_url FigNewton.base_url + '/options'

  div(:calls_europe_30){
    label_element(:class => 'ng-scope').div_element(:class => 'input input-radio fakeRadioSCOUBIDO2_CALL_EU_AO_S_SSOG')
  }

  button(:cancel, :class => 'btn btn-link ng-binding')
end