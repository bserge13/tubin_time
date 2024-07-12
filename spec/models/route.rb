require 'rails_helper'

RSpec.describe Route, type: :model do 
    describe 'validations' do  
        it { should validate_presence_of :title }
        it { should validate_presence_of :address }
        it { should validate_presence_of :city }
        it { should validate_presence_of :state }
        it { should validate_presence_of :flow_max }
        it { should validate_presence_of :flow_min }
        it { should validate_numericality_of :flow_max }
        it { should validate_numericality_of :flow_min }
    end

    describe '#instance_method' do 
        it '#current_flow', :vcr do
            expect(Route.last.current_flow).to be_a Float
        end

        it '#status', :vcr do
            expect(Route.last.status).to be_a String
        end
    end
end

