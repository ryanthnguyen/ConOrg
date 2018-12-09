class UsersController < ApplicationController
    def home
        begin
          @user = User.find(params[:id])
        rescue
          redirect_to home_url, alert: 'Error: User not found'
        end
        @registration_form = @user.registration_forms.find(@user.registration_form_ids.sample)
        @dealer_form = @user.dealer_forms.find(@user.dealer_form_ids.sample)
        @gm_form1 = @user.gm_form1s.find(@user.gm_form1_ids.sample)
        @gm_form2 = @user.gm_form2s.find(@user.gm_form2_ids.sample)
        @panelist_form = @user.panelist_forms.find(@user.panelist_form_ids.sample)
    end
    def index
        @users = User.all
        
    end

    def show
        begin
            
            @user = current_user
        rescue
            redirect_to users_url, alert: 'Error: User not found'
        end
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(params.require(:user).permit(:address, :age, :city, :email,:encrypted_password, :first_name, :last_name, :phone, :state, :zip))
        if @user.save
            redirect_to user_url(@user), notice: 'User Successfully added'
        else
            flash.now[:alert] = 'Error! unable to create'
            render :new
        end
    end

    def edit
        @user = User.find(params[:id])
        
    end
        
    def update
        @user = User.find(params[:id])
        if @user.update(params.require(:user).permit(:address, :age, :city, :email, :encrypted_password, :first_name, :last_name, :membership_type, :middle_name, :phone, :state, :zip, :admin))
            redirect_to user_url(@user), notice: 'User successfully updated'
        else
            flash.now[:alert] = 'Error! unable to update'
            render :edit
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_url, notice: 'User destroyed'
    end
end
