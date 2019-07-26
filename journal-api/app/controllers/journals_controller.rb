class JournalsController < ApplicationController

    def index 
        journals = Journal.all
        render :json => journals
    end

    def show
        journal = Journal.find(params[:id])
        render :json => journal
    end
end
