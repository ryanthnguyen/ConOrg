class PanelistFormsController < ApplicationController
    def index
        @panelist_forms = PanelistForm.all
    end

     def show
         @panelist_form = PanelistForm.find(params[:user_id])
     end
        
        
    def new
        begin
            @user = User.find(params[:user_id])
        rescue
            redirect_to users_url, alert: 'Error: user not found'
        end
        @panelist_form = PanelistForm.new
    end

    def create
        begin
            @user = User.find(params[:user_id])
        rescue
            redirect_to users_url, alert: 'Error: user not found'
        end
        @panelist_form = PanelistForm.new(params.require(:panelist_form).permit(:title, :pen_name, :badge_name, :website, :availability, :primary_professional_focus, :secondary_professional_focus, :panelist_before, :time_in_pro_row, :amount_of_pro_row, :place_art_in_art_room, :recent_credits, :short_biography, :panel_suggestions, :amount_of_panels_at_convention))
        @user.panelist_forms << @panelist_form
        if @user.save
            redirect_to user_url(@user), notice: 'panelist_form Successfully added'
        else
            flash.now[:alert] = 'Error! unable to create'
            render :new
        end
    end

    def edit
        @panelist_form = PanelistForm.find(params[:id])

    end

    def update
        begin
            @panelist_form = PanelistForm.find(params[:id])
        rescue
            redirect_to users_url, alert: 'Error: panelist_form not found'
        end
        if @panelist_form.update(params.require(:panelist_form).permit(:title, :pen_name, :badge_name, :website, :availability, :primary_professional_focus, :secondary_professional_focus, :panelist_before, :time_in_pro_row, :amount_of_pro_row, :place_art_in_art_room, :recent_credits, :short_biography, :panel_suggestions, :amount_of_panels_at_convention, :approved))
            redirect_to user_url(@panelist_form.user), notice: 'panelist_form successfully updated'
        else
            flash.now[:alert] = 'Error! unable to update'
            render :edit
        end
    end

    def destroy
        begin
            @panelist_form = PanelistForm.find(params[:id])
        rescue
            redirect_to users_url, alert: 'Error: panelist_form not found'
        end
        @user = @panelist_form.user
        @panelist_form.destroy
        redirect_to user_url(@user), notice: 'panelist_form destroyed'
    end
end
