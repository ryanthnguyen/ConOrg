class PagesController < ApplicationController
    def home

        
        #render home.html.erb
    end
    def eventinfo
        #render eventinfo.html.erb
    end
    def schedule
        @panelist_forms = PanelistForm.all
        @gm_form2s = GmForm2.all
        #render schedule.html.erb
    end
    def userauth
        #render user signup/login from userauth.html.erb
    end
    def pricinginformation
        #render user signup/login from userauth.html.erb
    end
    def gameinfo
        #render user signup/login from userauth.html.erb
    end
    def hotels
        #render user signup/login from userauth.html.erb
    end
    def panelinfo
        #render user signup/login from userauth.html.erb
    end
    def applications
        #render user signup/login from userauth.html.erb
    end
    def profilepage
        #render user signup/login from userauth.html.erb
    end
    def dealerinfo
        #render user signup/login from userauth.html.erb
    end

end