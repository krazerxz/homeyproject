class ProjectEvent < PaperTrail::Version
  def body
    case event
    when "create"
      object_changes_deserialized["body"].last
    when "update"
      from, to = changeset[:status]
      "Status changed from <b>#{ from }</b> to <b>#{ to }</b>".html_safe
    end
  end
end
