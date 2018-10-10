module NumbersExtractionService
  
    VOWEL_LETTERS_LOOKUP_MAP = {
        1 => ['а', 'ы'],
        2 => ['у'],
        3 => ['э'],
        4 => ['ю'],
        5 => ['я'],
        6 => ['е', 'о'],
        9 => ['и']
      }
  
      CONSONANT_LETTERS_LOOKUP_MAP = {
        1 => ['й', 'т'],
        2 => ['б', 'к'],
        3 => ['в', 'л', 'ф'],
        4 => ['г', 'м', 'х'],
        5 => ['д', 'н', 'ц'],
        6 => ['ч'],
        7 => ['ж', 'п', 'ш'],
        8 => ['з', 'р', 'щ'],
        9 => ['с']
      }
  
      OTHER_LETTERS_LOOKUP_MAP = {
        2 => ['ь'],
        9 => ['ъ']
      }
  
      PHYSICAL = [4, 5]
      MENTAL = [1, 8]
      EMOTIONAL = [2, 3, 6]
      INTUITIVE = [7, 9]


      def get_physical_array
        @physical_digits = []

        convert_vovwel_letters_to_digits.each do |digit|
            PHYSICAL.each do |physical_digit|
                @physical_digits << digit if physical_digit == digit
            end
        end

        convert_consonant_letters_to_digits.each do |digit|
            PHYSICAL.each do |physical_digit|
                @physical_digits << digit if physical_digit == digit
            end
        end

        convert_other_letters_to_digits.each do |digit|
            PHYSICAL.each do |physical_digit|
                @physical_digits << digit if physical_digit == digit
            end
        end
        @physical_digits
      end

      def get_mental_array
        @mental_digits = []

        convert_vovwel_letters_to_digits.each do |digit|
            MENTAL.each do |mental_digit|
                @mental_digits << digit if mental_digit == digit
            end
        end

        convert_consonant_letters_to_digits.each do |digit|
          MENTAL.each do |mental_digit|
                @mental_digits << digit if mental_digit == digit
            end
        end

        convert_other_letters_to_digits.each do |digit|
          MENTAL.each do |mental_digit|
                @mental_digits << digit if mental_digit == digit
            end
        end
        @mental_digits
      end
      
      def get_emotional_array
        @emotional_digits = []

        convert_vovwel_letters_to_digits.each do |digit|
            EMOTIONAL.each do |emotional_digit|
                @emotional_digits << digit if emotional_digit == digit
            end
        end

        convert_consonant_letters_to_digits.each do |digit|
          EMOTIONAL.each do |emotional_digit|
                @emotional_digits << digit if emotional_digit == digit
            end
        end

        convert_other_letters_to_digits.each do |digit|
          EMOTIONAL.each do |emotional_digit|
                @emotional_digits << digit if emotional_digit == digit
            end
        end
        @emotional_digits
      end

      def get_intuitive_array
        @intuitive_digits = []

        convert_vovwel_letters_to_digits.each do |digit|
            INTUITIVE.each do |intuitive_digit|
                @intuitive_digits << digit if intuitive_digit == digit
            end
        end

        convert_consonant_letters_to_digits.each do |digit|
          INTUITIVE.each do |intuitive_digit|
                @intuitive_digits << digit if intuitive_digit == digit
            end
        end

        convert_other_letters_to_digits.each do |digit|
          INTUITIVE.each do |intuitive_digit|
                @intuitive_digits << digit if intuitive_digit == digit
            end
        end
        @intuitive_digits
      end

      def convert_vovwel_letters_to_digits
        @vowel_letters_digits = []
  
        first_name_to_letters.each do |letter| 
          VOWEL_LETTERS_LOOKUP_MAP.each do |key, value| 
            @vowel_letters_digits <<  key if value.include?(letter)
          end
        end
  
        middle_name_to_letters.each do |letter| 
          VOWEL_LETTERS_LOOKUP_MAP.each do |key, value| 
            @vowel_letters_digits <<  key if value.include?(letter)
          end
        end
  
        last_name_to_letters.each do |letter| 
          VOWEL_LETTERS_LOOKUP_MAP.each do |key, value| 
            @vowel_letters_digits <<  key if value.include?(letter)
          end
        end
        @vowel_letters_digits
      end
  
      def convert_consonant_letters_to_digits
        @consonant_letters_digits = []
  
        first_name_to_letters.each do |letter| 
          CONSONANT_LETTERS_LOOKUP_MAP.each do |key, value| 
            @consonant_letters_digits <<  key if value.include?(letter)
          end
        end
  
        middle_name_to_letters.each do |letter| 
          CONSONANT_LETTERS_LOOKUP_MAP.each do |key, value| 
            @consonant_letters_digits <<  key if value.include?(letter)
          end
        end
  
        last_name_to_letters.each do |letter| 
          CONSONANT_LETTERS_LOOKUP_MAP.each do |key, value| 
            @consonant_letters_digits <<  key if value.include?(letter)
          end
        end
        @consonant_letters_digits
      end
  
      def convert_other_letters_to_digits
        @other_letters_digits = []
  
        first_name_to_letters.each do |letter| 
          OTHER_LETTERS_LOOKUP_MAP.each do |key, value| 
            @other_letters_digits <<  key if value.include?(letter)
          end
        end
  
        middle_name_to_letters.each do |letter| 
          OTHER_LETTERS_LOOKUP_MAP.each do |key, value| 
            @other_letters_digits <<  key if value.include?(letter)
          end
        end
  
        last_name_to_letters.each do |letter| 
          OTHER_LETTERS_LOOKUP_MAP.each do |key, value| 
            @other_letters_digits <<  key if value.include?(letter)
          end
        end
        @other_letters_digits
      end
  
      def first_name_to_letters
        @first_name_letters = []
        first_name_to_letters = @calculation.first_name.scan(/\W/)
        first_name_to_letters.each do |letter| 
          @first_name_letters << letter.downcase 
        end
        @first_name_letters
      end
  
      def middle_name_to_letters
        @middle_name_letters = []
        middle_name_to_letters = @calculation.middle_name.scan(/\W/)
        middle_name_to_letters.each do |letter|
          @middle_name_letters << letter.downcase
        end
        @middle_name_letters
      end
  
      def last_name_to_letters
        @last_name_letters = []
        last_name_to_letters = @calculation.last_name.scan(/\W/)
        last_name_to_letters.each do |letter|
          @last_name_letters << letter.downcase
        end
        @last_name_letters
      end
end