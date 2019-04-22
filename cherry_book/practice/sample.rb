




# 対象の文字列から、targetArrに含まれる文字の位置 - 1の値をArrayで返却する
# ※"みょ"などの文字列が「みょ」なのか「みっ」のような意味をなさない文字列なのかを判定する用
#  [ 戻り値 ] ( array )
#  e.g. targetStr=みょうじみょっ
#       => [0, 4, 5]
def search_char_at_index(targetArr, targetStr)
  result_idx_arr = []
  targetArr.each do |searchStr|
    if targetStr.count(searchStr) > 0
      targetStr.chars.each_with_index do |char, idx|
        result_idx_arr.push(idx - 1) if char==searchStr
      end
    end
  end

  return result_idx_arr
end




# 対象の文字列をKANA_ROMANに変換し、そのローマ字からROMAN_NUMを求めて累積した値を返却する
  #  [ 戻り値 ] ( int )
  #  e.g. targetStr=てれしす
  #       TE  RE  SHI SU
  #       45	25	381	36
  #       => 4+5+2+5+3+8+1+3+6 = 37
  def calculate_kana_roman_sum(targetStr)
    small_str_arr = ['ぁ','ぃ','ぅ','ぇ','ぉ','っ','ゃ','ゅ','ょ','ゎ']
    small_str_find_idx_arr = search_char_at_index(small_str_arr, targetStr)

    sum_num = 0
    target_idx = 0

    begin
      while target_idx < targetStr.length do
        string_to_roman = nil
        string_to_roman = KANA_ROMAN[targetStr[target_idx, 2]] if small_str_find_idx_arr.include?(target_idx)

        if string_to_roman.nil?
          string_to_roman = KANA_ROMAN[targetStr[target_idx, 1]]
          target_idx += 1
        else
          target_idx += 2
        end

        string_to_roman.upcase.chars do |char|
          ROMAN_NUM.each_with_index do |obj, i|
            obj.index(char) and sum_num += (i + 1)
          end
        end
      end
    rescue
      return 1
    end

    return sum_num

  end









def calculate_suurei_name_12p(last_name, first_name)
  last_name_to_num = calculate_kana_roman_sum(last_name)
  first_name_to_num = calculate_kana_roman_sum(first_name)

  logic = (last_name_to_num + first_name_to_num) % 12 + 1

  return (logic==nil) ? 1 : logic
end
