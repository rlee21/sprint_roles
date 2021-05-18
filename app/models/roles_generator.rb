class RolesGenerator

  ROLES = roles = [:retro, :planning, :roles_rotation].freeze

  def self.call(team: "consumer")
    members = User.where(team: team.titlecase, active: true).pluck(:name)
    members.shuffle.zip(ROLES.shuffle).reject { |member_role| member_role.last.nil? }
  end

end
