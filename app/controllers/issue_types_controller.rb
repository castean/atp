class IssueTypesController < InheritedResources::Base
  def index
    @issue_types = IssueType.order(:name).all
  end
end
