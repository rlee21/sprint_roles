class RolesGenerator

  ROLES = ["Planning", "Roles Rotation", "Retro", "Standup", "Tech Debt"].freeze

  def self.call(team: "Consumer")
    members = User.where(team: team.titlecase, active: true).pluck(:name)
    members.shuffle.zip(ROLES.shuffle).reject { |member_role| member_role.last.nil? }
  end

end
