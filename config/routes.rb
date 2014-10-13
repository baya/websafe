Rails.application.routes.draw do
  get 'html_escape' => 'html_escape#index'
  get 'attribute_escape' => 'attribute_escape#index'
  get 'js_escape' => 'js_escape#index'
  get 'css_escape' => 'css_escape#index'
  get 'json_escape' => 'json_escape#index'
  get 'url_escape' => 'url_escape#index'
  get 'sanitize' => 'sanitize#index'
  get 'dom_base_xss' => 'dom_base_xss#index'
  get 'httponly_flag/true' => 'httponly_flag#true'
  get 'httponly_flag/false' => 'httponly_flag#false'
end
