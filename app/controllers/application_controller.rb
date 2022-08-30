class ApplicationController < ActionController::API
   rescue_from ActiveRecord::RecordInvalid, with: :invalid_entity

   private

   def invalid_entity(invalid)
      render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end
end
