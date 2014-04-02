EpicodusReworked::Application.routes.draw do
  root 'sections#welcome'
  match('sections', {:via => :get, :to => 'sections#tableOfContents'})
  match('/lessons/:id', {:via => :get, :to => 'lessons#view'})
  match('/admin/lessons', {:via => :post, :to => 'lessons#create'})
  match('/admin/lessons/:id', {:via => [:patch, :put], :to => 'lessons#update'})
  match('/admin/lessons/:id', {:via => :get, :to => 'lessons#edit'})
  match('/admin/lessons/:id', {:via => :delete, :to => 'lessons#destroy'})


  match('/admin/sections', {:via => :post, :to => 'sections#create'})
  match('/admin/sections/:id', {:via => :delete, :to => 'sections#destroy'})


  match('/admin', {:via => :get, :to => 'sections#admin'})
end
