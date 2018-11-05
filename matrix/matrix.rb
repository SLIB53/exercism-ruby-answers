class Matrix
  def initialize(serial)
    @rows = serial.split("\n").map { |s_row| s_row.split.map { |s_num| Integer(s_num) } }
    @columns = @rows.transpose
  end

  attr_reader :rows
  attr_reader :columns
end
