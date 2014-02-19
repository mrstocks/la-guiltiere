ActiveAdmin.register Document do
  permit_params :name, :intro, :main

  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end 
 controller do

   def create
     
     @document = Document.new
     @document.name = params[:document][:name]
     @document.intro = params[:document][:intro]
     @document.main = params[:document][:main]
     @document.save
     redirect_to :action => :index
   end
end


   form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Documents" do
        f.input :name
        f.input :intro, as: :html_editor
        f.input :main, as: :html_editor 
     end
     f.actions
   end

end
