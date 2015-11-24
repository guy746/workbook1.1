ActiveAdmin.register Workbook do
  permit_params :title, :clientid, :memberid, :formid, :formver, :q001section, :q001qlong, :q001qshort, :q001qatext

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
