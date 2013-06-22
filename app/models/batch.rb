class Batch

  def id
    '1'
  end

  def name
    'Sydney Sunrise'
  end

  def ends_at
    1.month.from_now
  end

  def to_param
    id.to_s
  end

end
