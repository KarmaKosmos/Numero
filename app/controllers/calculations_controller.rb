class CalculationsController < ApplicationController
    def index
        @calculations = Calculation.all
    end
    
    def show
        @calculation = Calculation.find(params[:id])
    end
    
    def new
        @calculation = Calculation.new
    end

    def edit
        @calculation = Calculation.find(params[:id])
    end

    def create
        @calculation = Calculation.new(calculation_params)

        @calculation.birth_number = MainNumbersService.new(@calculation).birth_number
        @calculation.heart_number = MainNumbersService.new(@calculation).heart_number
        @calculation.figure_number = MainNumbersService.new(@calculation).figure_number
        @calculation.destiny_number = MainNumbersService.new(@calculation).destiny_number
        @calculation.reality_number = MainNumbersService.new(@calculation).reality_number
        @calculation.physical_aspect = MainNumbersService.new(@calculation).physical_aspect
        @calculation.physical_aspect_total = MainNumbersService.new(@calculation).physical_aspect_total
        @calculation.mental_aspect = MainNumbersService.new(@calculation).mental_aspect
        @calculation.mental_aspect_total = MainNumbersService.new(@calculation).mental_aspect_total
        @calculation.emotional_aspect = MainNumbersService.new(@calculation).emotional_aspect
        @calculation.emotional_aspect_total = MainNumbersService.new(@calculation).emotional_aspect_total
        @calculation.intuitive_aspect = MainNumbersService.new(@calculation).intuitive_aspect
        @calculation.intuitive_aspect_total = MainNumbersService.new(@calculation).intuitive_aspect_total


        if @calculation.save 
            redirect_to @calculation
        else
            render 'new'
        end    
    end

    def update
        @calculation = Calculation.find(params[:id])
        @calculation.attributes = calculation_params
        #@calculation.assign_attributes(calculation_params)

        @calculation.birth_number = MainNumbersService.new(@calculation).birth_number
        @calculation.heart_number = MainNumbersService.new(@calculation).heart_number
        @calculation.figure_number = MainNumbersService.new(@calculation).figure_number
        @calculation.destiny_number = MainNumbersService.new(@calculation).destiny_number
        @calculation.reality_number = MainNumbersService.new(@calculation).reality_number
        @calculation.physical_aspect = MainNumbersService.new(@calculation).physical_aspect
        @calculation.physical_aspect_total = MainNumbersService.new(@calculation).physical_aspect_total
        @calculation.mental_aspect = MainNumbersService.new(@calculation).mental_aspect
        @calculation.mental_aspect_total = MainNumbersService.new(@calculation).mental_aspect_total
        @calculation.emotional_aspect = MainNumbersService.new(@calculation).emotional_aspect
        @calculation.emotional_aspect_total = MainNumbersService.new(@calculation).emotional_aspect_total
        @calculation.intuitive_aspect = MainNumbersService.new(@calculation).intuitive_aspect
        @calculation.intuitive_aspect_total = MainNumbersService.new(@calculation).intuitive_aspect_total


        if @calculation.save
            redirect_to @calculation
        else
            render 'edit'
        end
    end 
    
    def destroy
        @calculation = Calculation.find(params[:id])
        @calculation.destroy

        redirect_to calculations_path
    end

    private
        def calculation_params
            params.require(:calculation).permit(:first_name, 
                                                :middle_name, 
                                                :last_name, 
                                                :date_of_birth)
        end
end
