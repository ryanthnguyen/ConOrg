class DealerFormsController < ApplicationController
    def index
        @dealer_forms = DealerForm.all
    end

     def show
         
         @dealer_form = DealerForm.find(params[:user_id])
         
     end
        
        
    def new
        begin
            @user = User.find(params[:user_id])
        rescue
            redirect_to users_url, alert: 'Error: user not found'
        end
        @dealer_form = DealerForm.new
    end

    def create
        begin
            @user = User.find(params[:user_id])
        rescue
            redirect_to users_url, alert: 'Error: user not found'
        end
        @dealer_form = DealerForm.new(params.require(:dealer_form).permit(:business_name, :type_of_merchandise_or_service, :company_website_address, :number_of_spaces, :display_require_AC_power, :number_of_memberships, :list_names_ages_of_extra_members))
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
        if @dealer_form.update(params.require(:dealer_form).permit(:badge_name, :business_name, :type_of_merchandise_or_service, :company_website_address, :email_address, :number_of_spaces, :display_require_AC_power, :number_of_memberships, :list_names_ages_of_extra_members, :approved))
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
