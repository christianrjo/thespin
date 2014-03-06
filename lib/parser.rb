module Parser
  extend self
  EXPECTED_LENGTH = 3
  def parse(row)
    pieces = row.split(';')
    if pieces.length == EXPECTED_LENGTH
      pieces.pop.split(' ').each_slice(pieces.pop.to_i).to_a
    else
      nil
    end
  end
end
