module PostsHelper

  def author_id_field(form_builder)
    unless form_builder.object.author
      form_builder.collection_select :author_id, Author.all, :id, :name
    else
      form_builder.hidden_field :author_id
    end
  end

end
