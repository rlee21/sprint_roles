team = ["Ali", "Jackson", "Jonathan", "Justin", "Mat", "Robert", "Sowmya", "Tim"]

team.each do |member|
  User.create(name: member, team: "Consumer", active: true)
end
