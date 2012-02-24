module TrunksHelper

  def links_helper_for(trunk)
    haml_tag :a, :href => trunk_path(trunk) do
      haml_concat "Show"
    end
    haml_concat " | "
    haml_tag :a, :href => edit_trunk_path(trunk) do
      haml_concat "Edit"
    end
    haml_concat " | "
    haml_tag :a, :href => trunk_path(trunk), :method => :delete, :confirm => "Are you sure?" do
      haml_concat "Delete"
    end
  end

end
