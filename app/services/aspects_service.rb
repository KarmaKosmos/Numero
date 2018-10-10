module AspectsService
    include NumbersExtractionService

    def calculate_physical_aspect_total
        @physical_aspect_total = get_physical_array.sum
  
        while @physical_aspect_total.digits.size > 1
          @physical_aspect_total = @physical_aspect_total.digits.sum
        end
        @physical_aspect_total
      end
  
      def calculate_physical_aspect
        @physical_aspect = get_physical_array.count
      end

      def calculate_mental_aspect_total
        @mental_aspect_total = get_mental_array.sum
  
        while @mental_aspect_total.digits.size > 1
          @mental_aspect_total = @mental_aspect_total.digits.sum
        end
        @mental_aspect_total
      end
  
      def calculate_mental_aspect
        @mental_aspect = get_mental_array.count
      end

      def calculate_emotional_aspect_total
        @emotional_aspect_total = get_emotional_array.sum
  
        while @emotional_aspect_total.digits.size > 1
          @emotional_aspect_total = @emotional_aspect_total.digits.sum
        end
        @emotional_aspect_total
      end
  
      def calculate_emotional_aspect
        @emotional_aspect = get_emotional_array.count
      end

      def calculate_intuitive_aspect_total
        @intuitive_aspect_total = get_intuitive_array.sum
  
        while @intuitive_aspect_total.digits.size > 1
          @intuitive_aspect_total = @intuitive_aspect_total.digits.sum
        end
        @intuitive_aspect_total
      end
  
      def calculate_intuitive_aspect
        @intuitive_aspect = get_intuitive_array.count
      end
end