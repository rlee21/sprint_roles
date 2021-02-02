class PairsGenerator

  def self.call(team: "Consumer")
    pairs = []
    team = User.where(team: team.titlecase, active: true).pluck(:name)
    (team.size/2).times { pairs << team.shuffle!.pop(2) }
    pairs
  end

end
