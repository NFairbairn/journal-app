class JournalsController < ApplicationController

    def index 
        journals = Journal.all
        render json: journals, include: [:entries]
    end

    def show
        journal = Journal.find(params[:id])
        render json: journal, include: [:entries]
    end

    def update
        journal = Journal.find(params[:id])
        journal.update(subject: params[:subject])
        render :json => journal
    end

    def destroy
        journal = Journal.find(params[:id])
        journals = Journal.all
        journal.delete()
        render :json => journals       
    end
end
