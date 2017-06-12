class VotesController < ApplicationController

  def index
    case params[:order]
    when "most_normal_votes"
      @votes = Vote.all.most_normal_votes
    when "most_vip_votes"
      @votes = Vote.all.most_vip_votes
    else
      @votes = Vote.all.most_votes
    end
    @votes = @votes.page(params[:page]).per_page(10)
  end
end
