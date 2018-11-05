class Matrix
  attr_reader :rows, :columns

  def initialize(serial)
    @rows = deserialize_rows(serial)
    @columns = @rows.transpose
  end

  private

  def deserialize_rows(serial)
    serial.split("\n").map { |s_row| deserialize_row(s_row) }
  end

  def deserialize_row(row_serial)
    row_serial.split.map { |s_num| Integer(s_num) }
  end
end
