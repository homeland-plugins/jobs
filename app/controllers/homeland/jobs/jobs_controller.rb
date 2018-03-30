module Homeland::Jobs
  class JobsController < ::ApplicationController
    before_action :set_node

    def index
      @suggest_topics = Topic.where(node_id: @node.id).suggest.limit(3)
      suggest_topic_ids = @suggest_topics.map(&:id)
      @topics = Topic.where(node_id: @node.id)
      @topics = @topics.where.not(id: suggest_topic_ids) if suggest_topic_ids.count > 0
      @topics = @topics.last_actived.includes(:user).page(params[:page])
      @topics = @topics.where("title LIKE ?", "%[#{params[:location]}]%") if params[:location]
      @page_title = '招聘'
      render '/topics/index' if stale?(etag: [@node, @suggest_topics, @topics], template: '/topics/index')
    end

    def show
    end

    private

    def set_node
      @node = Node.find_builtin_node(25, '招聘')
    end
  end
end
