ActiveAdmin.register Submission do
  permit_params :id, :problem_id, :user_id, :contest_id, :compiler, :result, :score, :_result, :code, :total_time, :total_memory
  includes :compiler
  index do
    selectable_column
    column :id do |t|
      link_to t.id, admin_submission_path(t)
    end
    column :problem_id
    column :user_id
    column :contest_id
    column :compiler
    column :result
    column :score
    actions
  end

  preserve_default_filters!
  remove_filter :submission_tasks
  remove_filter :problem
  remove_filter :user
  filter :problem_id
  filter :user_id
  #filter

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

end
