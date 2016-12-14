Rails.application.routes.draw do

  ######## default notee path

  get '/about'                      => 'notee#about'

  mount Notee::Engine => '/notee'

  get '/'                           => 'notee#index',           as: 'notee_public_index'
  get '/categories'                 => 'notee#categories',      as: 'notee_public_categories'
  get '/categories/:name_or_slug'   => 'notee#category_posts',  as: 'notee_public_category_posts'
  get '/archives'                   => 'notee#archives',        as: 'notee_public_archives'
  get '/archives/:year'             => 'notee#archive_posts',   as: 'notee_public_archive_posts'
  get '/archives/:year/:month'      => 'notee#archive_posts'
  get '/writers'                    => 'notee#writers',         as: 'notee_public_writers'
  get '/writers/:name_or_id'        => 'notee#writer_posts',    as: 'notee_public_writer_posts'
  get '/:id_or_slug'                => 'notee#show',            as: 'notee_public_show'

  get '*anything'                   => 'errors#resque404'

  ######## notee setting end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
