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
       
    end
    def pricinginformation
       
    end
    def gameinfo
     
    end
    def hotels
       
    end
    def panelinfo
        
    end
    def applications
       
    end
    def profilepage
       
    end
    def dealerinfo
        
    end
    def authorgoh
    end

    def comicsgoh
    end

    def editorgoh
    end

    def toastmaster
    end

    def artistgoh
    end

    def gaminggoh
    end

    def costuminggoh
    end




end