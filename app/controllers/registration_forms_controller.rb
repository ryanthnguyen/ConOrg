
class RegistrationFormsController < ApplicationController
    def index
        @registration_forms = RegistrationForm.all
    end

    def show
         @registration_form = RegistrationForm.find(params[:id])
    end
        
        
    def new
        begin
            @user = User.find(params[:user_id])
        rescue
            redirect_to users_url, alert: 'Error: user not found'
        end
        @registration_form = RegistrationForm.new
    end

    def create
        begin
            @user = User.find(params[:user_id])
        rescue
            redirect_to users_url, alert: 'Error: user not found'
        end
        @registration_form = RegistrationForm.new(params.require(:registration_form).permit(:different_prices, :payment_type, :coupon_codes))
        @user.registration_forms << @registration_form
        if @user.save
            redirect_to user_url(@user), notice: 'registration_form Successfully added'
        else
            flash.now[:alert] = 'Error! unable to create'
            render :new
        end
    end

    def edit
        @registration_form = RegistrationForm.find(params[:id])

    end

    def update
        begin
            @registration_form = RegistrationForm.find(params[:id])
        rescue
            redirect_to users_url, alert: 'Error: registration_form not found'
        end
        if @registration_form.update(params.require(:registration_form).permit(:different_prices, :payment_type, :coupon_codes))
            redirect_to user_url(@registration_form.user), notice: 'registration_form successfully updated'
        else
            flash.now[:alert] = 'Error! unable to update'
            render :edit
        end
    end

    def destroy
        begin
            @registration_form = RegistrationForm.find(params[:id])
        rescue
            redirect_to users_url, alert: 'Error: registration_form not found'
        end
        @user = @registration_form.user
        @registration_form.destroy
        redirect_to user_url(@user), notice: 'registration_form destroyed'
    end
end

