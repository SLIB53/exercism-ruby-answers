class Matrix
  def initialize(serial)
    serialized_rows = serial.split("\n")
    @rows = serialized_rows.map { |s_row| s_row.split.map { |s_num| Integer(s_num) } }
    @columns = rows.transpose
  end

  attr_reader :rows
  attr_reader :columns
end
