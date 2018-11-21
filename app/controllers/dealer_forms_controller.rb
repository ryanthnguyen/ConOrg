class DealerFormsController < ApplicationController
    def index
        @dealer_forms = DealerForm.all
    end

    # def show
    #     @dealer_form = DealerForm.find(params[:id])
    # end
        
        
    def new
        begin
            @user = DealerForm.find(params[:user_id])
        rescue
            redirect_to users_url, alert: 'Error: user not found'
        end
        @dealer_form = DealerForm.new
    end

    def create
        begin
            @user = DealerForm.find(params[:user_id])
        rescue
            redirect_to users_url, alert: 'Error: user not found'
        end
        @dealer_form = DealerForm.new(params.require(:dealer_form).permit(:first_name, :last_name, :address, :city, :state, :zip, :different_prices, :payment_type, :coupon_codes))
        @user.dealer_forms << @dealer_form
        if @user.save
            redirect_to user_url(@user), notice: 'dealer_form Successfully added'
        else
            flash.now[:alert] = 'Error! unable to create'
            render :new
        end
    end

    def edit
        @dealer_form = DealerForm.find(params[:id])

    end

    def update
        begin
            @dealer_form = DealerForm.find(params[:id])
        rescue
            redirect_to users_url, alert: 'Error: dealer_form not found'
        end
        if @dealer_form.update(params.require(:dealer_form).permit(:first_name, :last_name, :address, :city, :state, :zip, :different_prices, :payment_type, :coupon_codes))
            redirect_to user_url(@dealer_form.user), notice: 'dealer_form successfully updated'
        else
            flash.now[:alert] = 'Error! unable to update'
            render :edit
        end
    end

    def destroy
        begin
            @dealer_form = DealerForm.find(params[:id])
        rescue
            redirect_to users_url, alert: 'Error: dealer_form not found'
        end
        @user = @dealer_form.user
        @dealer_form.destroy
        redirect_to user_url(@user), notice: 'dealer_form destroyed'
    end
end
