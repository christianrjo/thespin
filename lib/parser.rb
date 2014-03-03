module Parser
  extend self
  def parse(row)
    pieces = row.split(';')
    if pieces.length == 3
      pieces.pop.split(' ').each_slice(pieces.pop.to_i).to_a
    else
      nil
    end
  end
end
