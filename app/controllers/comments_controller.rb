class CommentsController < ApplicationController
  before_action :set_comment, only: %i[ edit ]

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  def create
    @comment = Comment.new(comment_params)

    notice = @comment.save ? "Comment was successfully created." : "Comment count not be created."
    redirect_to project_path(@comment.project), notice: notice
  end

  # PATCH/PUT /comments/1
#  def update
#    if @comment.update(comment_params)
#      redirect_to project_path(@comment.project), notice: "Comment was successfully updated.", status: :see_other
#    else
#      render :edit, status: :unprocessable_entity
#    end
#  end

  # DELETE /comments/1
#  def destroy
#    @comment.destroy!
#    redirect_to comments_path, notice: "Comment was successfully destroyed.", status: :see_other
#  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.expect(comment: [ :body, :project_id ])
    end
end
