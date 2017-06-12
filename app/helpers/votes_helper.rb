module VotesHelper
  def render_votes(votes)
    sprintf("%2.2f", votes)
  end
end
