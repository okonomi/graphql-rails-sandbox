module Mutations
  class CreatePost < BaseMutation
    # define return fields
    field :post, Types::PostType, null: false

    # define arguments
    argument :title, String, required: true
    argument :content, String, required: true
    argument :user_id, ID, required: true

    # define resolve method
    def resolve(title:, content:, user_id:)
      post = Post.new(title: title, content: content, user_id: user_id)
      post.save!

      { post: post }
    end
  end
end
