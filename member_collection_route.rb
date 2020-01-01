Difference between collection route and member route in ruby on rails?


A member route will require an ID, because it acts on a member. A collection route doesn't because it 
acts on a collection of objects. Preview is an example of a member route, because it acts on (and displays)
a single object. Search is an example of a collection route, because it acts on (and displays) a collection of objects.

resources :photos do
  member do
    get :preview
  end
end


resources :photos do
  collection do
    get :search
  end
end


                URL                 Helper                      Description
---------------------------------------------------------------------------------------------------------------------
member          /photos/1/preview   preview_photo_path(photo)   Acts on a specific resource so required id (preview specific
                                                                                                            photo)
collection      /photos/search      search_photos_path          Acts on collection of resources(display all photos)
