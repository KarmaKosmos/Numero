class MainNumbersService
  include NumbersExtractionService
  include AspectsService

    attr_reader :birth_number, :heart_number, :figure_number, :destiny_number, :reality_number,
                :physical_aspect, :physical_aspect_total, :mental_aspect, :mental_aspect_total,
                :emotional_aspect, :emotional_aspect_total, :intuitive_aspect, :intuitive_aspect_total

    
    def initialize calculation
      @calculation = calculation

      self.calculate_birth_number
      self.calculate_heart_number
      self.calculate_figure_number
      self.calculate_destiny_number
      self.calculate_reality_number
      self.calculate_physical_aspect
      self.calculate_physical_aspect_total
      self.calculate_mental_aspect
      self.calculate_mental_aspect_total
      self.calculate_emotional_aspect
      self.calculate_emotional_aspect_total
      self.calculate_intuitive_aspect
      self.calculate_intuitive_aspect_total
    end

    def calculate_birth_number
      @birth_number = date_of_birth_digits_array.sum

      while @birth_number.digits.size > 1
        @birth_number = @birth_number.digits.sum
      end
      @birth_number 
    end

    def date_of_birth_digits_array
      @date_of_birth_digits_array ||= @calculation.date_of_birth.to_s.split(//).delete_if { |a| a == '-' }.map! { |a| a.to_i }
    end

    def calculate_heart_number
      @heart_number = convert_vovwel_letters_to_digits.sum
  
      while @heart_number.digits.size > 1
        @heart_number = @heart_number.digits.sum
      end
    end

    def calculate_figure_number
      @figure_number = convert_consonant_letters_to_digits.sum
 
      while @figure_number.digits.size > 1
        @figure_number = @figure_number.digits.sum
      end
    end

    def calculate_destiny_number
      @destiny_number = convert_vovwel_letters_to_digits + convert_consonant_letters_to_digits + convert_other_letters_to_digits
      @destiny_number = @destiny_number.sum

      while @destiny_number.digits.size > 1
        @destiny_number = @destiny_number.digits.sum
      end
      @destiny_number
    end

    def calculate_reality_number
      @reality_number = calculate_destiny_number + calculate_birth_number
    
      while @reality_number.digits.size > 1
        @reality_number = @reality_number.digits.sum
      end
    end
end