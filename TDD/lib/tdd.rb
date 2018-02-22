class Array
  def remove_dups
    return nil if self.empty?
    new_arr =[]
    self.each do |el|
      new_arr << el unless new_arr.include?(el)
    end
    new_arr
  end

  def two_sum
    return nil if self.empty?
    new_arr = []
    self.each_index do |idx1|
      (idx1+1...length).each do |idx2|
        new_arr << [idx1,idx2] if self[idx1]+self[idx2] == 0
      end
    end
    new_arr
  end

  def my_transpose
    transposed_arr = Array.new(self[0].length){Array.new(length)}
      self.each_index do |row_idx|
        self[row_idx].each_index do |col_idx|
          transposed_arr[col_idx][row_idx] = self[row_idx][col_idx]
        end
      end
    transposed_arr
  end

  def stock_picker
    stock_index = nil
    max_profit = 0

    self.each_with_index do |stock_amt, buy_idx|
      next if buy_idx == self.length - 1

      (buy_idx + 1...length).each do |sell_idx|
        current_profit = self[sell_idx] - self[buy_idx]
        if current_profit > max_profit
          max_profit = current_profit
          stock_index = [buy_idx, sell_idx]
        end
      end
    end

    stock_index
  end
end
