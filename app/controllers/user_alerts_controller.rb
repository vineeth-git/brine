class UserAlertsController < ApplicationController
    before_action :loan_user
    before_action :load_alert, only: [:show, :update, :destroy]
    def index
        render json: @user.user_alerts
    end

    def show
        render json: @alert
    end

    def create
        new_alert = @user.user_alerts.build(user_alert_params)
        if new_alert.save
            render json: {message: 'Alert Create Successfully'}, status: 200
        else
            render json: {error: 'Error Creating ALert'}, status: 400

        end
    end

    def update
        if @alert.update_attributes(update_params)
            render json: {message: 'Alert Updated Successfully'}, status: 200
        else
            render json: {error: 'Error Updating Alert'}, status: 400
        end
    end

    def destroy
        if @alert.destroy
            render json: {message: 'Alert Deleted Successfully'}, status: 200
        else 
            render json: {error: 'Error Deleting Alert'}, status: 400
        end
    end


    def user_alert_params
        params.require(:user_alert).permit(:alert_name, :target_price)
    end

    def loan_user
        @user ||= User.find(params[:user_id])
    end

    def load_alert
        @alert ||= @user.user_alerts.find(params[:id])  
    end
    
    def update_params
        params.require(:user_alert).permit(:alert_name, :target_price)
    end
end
