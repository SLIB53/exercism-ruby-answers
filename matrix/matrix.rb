class Matrix
  def initialize(serial)
    @serial = serial
  end

  def rows
    serialized_rows = @serial.split("\n")
    serialized_rows.map { |s_row| s_row.split.map { |s_num| Integer(s_num) } }
  end

  def columns
    deserialized_rows = rows
    deserialized_rows[0].zip(*deserialized_rows[1..-1])
  end
end
