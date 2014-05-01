require 'spec_helper'

describe UsersController do
  describe 'PUT #create' do
    context 'given correct parameters' do
      it 'should create the user' do
        user_params = {
          user: {
            first_name: 'Lumpy',
            last_name: 'Space Princess',
            gender: 'F'
          }
        }

        #TODO: check why this is needed
        request.accept = 'application/json'

        response = put :create, user_params
        expect(response.status).to eq(204)
      end
    end
  end
end
