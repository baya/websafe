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

  namespace :csp do
    get 'script-src/none' => 'script_src#none'
    get 'script-src/self' => 'script_src#self'
    get 'script-src/self-ext' => 'script_src#self_ext'
    get 'script-src/self-nonce' => 'script_src#self_nonce'
    get 'script-src/unsafe-inline' => 'script_src#unsafe_inline'
    get 'script-src/block-unsafe-eval' => 'script_src#block_unsafe_eval'
    get 'script-src/unsafe-eval' => 'script_src#unsafe_eval'
    get 'default-src/self' => 'default_src#self'
    get 'misc/default-script-src' => 'misc#default_script_src'
    get 'report-only' => 'report_only#index'
  end

  post 'csp_report' => 'csp_report#create'

  namespace :csrf do

    scope :admin do
      get 'login' => 'session#new'
      post 'login' => 'session#create'
      delete 'logout' => 'session#destroy'
      get 'logout' => 'session#destroy'

      get 'admin_user/new' => 'admin_user#new'
      get 'admin_user/unsafe_create' => 'admin_user#unsafe_create'
      post 'admin_user/create' => 'admin_user#create'
    end

    scope :attacker do
      get 'hook' => 'hook#index'
    end

  end

end
