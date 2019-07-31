class EntriesController < ApplicationController
    def index 
        entries = Entry.all
        render :json => entries
    end

    def show
        entry = Entry.find(params[:id])
        render :json => entry
    end

    def create 
        entry = Entry.new(title: params[:title], content: params[:content], journal_id: params[:journal_id])
        entry.save
        render :json => entry
    end

    def update
        entry = Entry.find(params[:id])
        entry.update(title: params[:title], content: params[:content])
        render :json => entry
    end

    def destroy
        entry = Entry.find(params[:id])
        entries = Entry.all
        entry.delete()
        render :json => entries       
    end
end
