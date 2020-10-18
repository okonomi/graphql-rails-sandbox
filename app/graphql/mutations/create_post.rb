module Mutations
  class CreatePost < BaseMutation
    # define return fields
    field :post, Types::PostType, null: false

    # define arguments
    argument :title, String, required: true
    argument :content, String, required: true

    # define resolve method
    def resolve(title:, content:)
      post = Post.new(title: title, content: content)
      post.save!

      { post: post }
    end
  end
end
