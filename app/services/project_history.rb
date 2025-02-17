class ProjectHistory
  def initialize(project, from: 1.week.ago)
    @project = project
    @from    = from
  end

  def events
    @history ||= ProjectEvent.where(event: "create", item_type: "Comment", item_id: @project.comments.pluck(:id), created_at: @from..)
                             .or(ProjectEvent.where(event: "update", item_type: "Project", item_id: @project.id, created_at: @from..))
                             .order(created_at: :desc)
  end
end
