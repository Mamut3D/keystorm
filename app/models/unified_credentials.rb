class UnifiedCredentials
  attr_reader :id, :email, :groups, :authentication,
              :name, :identity, :expiration, :issuer,
              :acr

  def initialize(args = {})
    @id = args.fetch(:id)
    @email = args.fetch(:email)
    @groups = args.fetch(:groups)
    @authentication = args.fetch(:authentication)
    @name = args.fetch(:name)
    @identity = args.fetch(:identity)
    @expiration = args.fetch(:expiration)
    @issuer = args.fetch(:issuer)
    @acr = args.fetch(:acr)
  end

  def to_hash
    { id: @id,
      email: @email,
      groups: @groups,
      authentication: @authentication,
      name: @name,
      identity: @identity,
      expiration: @expiration,
      issuer: @issuer,
      acr: @acr }
  end
end
