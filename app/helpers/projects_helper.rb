module ProjectsHelper
  def project_status_titles_and_keys
    Project.statuses.map { |key, value| [key.titleize, Project.statuses.key(value)] }
  end
end
