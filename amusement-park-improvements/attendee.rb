class Attendee
  def initialize(height)
    @height = height
    @has_pass = false
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
    @has_pass = true
  end

  def revoke_pass!
    @pass_id = nil
    @has_pass = false
  end

  def has_pass?
    @has_pass
  end

  def fits_ride?(ride_minimum_height)
    @height >= ride_minimum_height
  end

  def allowed_to_ride?(ride_minimum_height)
    @has_pass and @height >= ride_minimum_height
  end
end
