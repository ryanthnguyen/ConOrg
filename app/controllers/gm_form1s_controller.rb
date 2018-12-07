class GmForm1sController < ApplicationController
    def index
        @gm_form1s = GmForm1.all
    end

     def show
         @gm_form1 = GmForm1.find(params[:user_id])
     end
        
        
    def new
        begin
            @user = User.find(params[:user_id])
        rescue
            redirect_to users_url, alert: 'Error: user not found'
        end
        @gm_form1 = GmForm1.new
    end

    def create
        begin
            @user = User.find(params[:user_id])
        rescue
            redirect_to users_url, alert: 'Error: user not found'
        end
        @gm_form1 = GmForm1.new(params.require(:gm_form1).permit(:first_name, :last_name, :address, :city, :state, :zip, :age))
        @user.gm_form1s << @gm_form1
        if @user.save
            redirect_to user_url(@user), notice: 'gm_form1 Successfully added'
        else
            flash.now[:alert] = 'Error! unable to create'
            render :new
        end
    end

    def edit
        @gm_form1 = GmForm1.find(params[:id])

    end

    def update
        begin
            @gm_form1 = GmForm1.find(params[:id])
        rescue
            redirect_to users_url, alert: 'Error: gm_form1 not found'
        end
        if @gm_form1.update(params.require(:gm_form1).permit(:first_name, :last_name, :address, :city, :state, :zip, :age, :approved))
            redirect_to user_url(@gm_form1.user), notice: 'gm_form1 successfully updated'
        else
            flash.now[:alert] = 'Error! unable to update'
            render :edit
        end
    end

    def destroy
        begin
            @gm_form1 = GmForm1.find(params[:id])
        rescue
            redirect_to users_url, alert: 'Error: gm_form1 not found'
        end
        @user = @gm_form1.user
        @gm_form1.destroy
        redirect_to user_url(@user), notice: 'gm_form1 destroyed'
    end
end
