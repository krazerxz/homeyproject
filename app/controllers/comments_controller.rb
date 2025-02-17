class CommentsController < ApplicationController
  # POST /comments
  def create
    @comment = Comment.new(comment_params)

    notice = @comment.save ? "Comment was successfully created." : "Comment count not be created."
    redirect_to project_path(@comment.project), notice: notice
  end

  private

  # Only allow a list of trusted parameters through.
  def comment_params
    params.expect(comment: [ :body, :project_id ])
  end
end
