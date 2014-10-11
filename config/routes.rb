Rails.application.routes.draw do
  get 'html_escape' => 'html_escape#index'
  get 'attribute_escape' => 'attribute_escape#index'
  get 'js_escape' => 'js_escape#index'
  get 'css_escape' => 'css_escape#index'
end
