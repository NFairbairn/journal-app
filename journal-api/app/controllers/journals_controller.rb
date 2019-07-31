class JournalsController < ApplicationController

    def index 
        journals = Journal.all.order('created_at DESC')
        render json: journals, include: [:entries]
    end

    def show
        journal = Journal.find(params[:id])
        render json: journal, include: [:entries]
    end

    def create
        # byebug
        journal = Journal.new(subject: params[:subject], user_id: params[:user_id])
        journal.save
        # journals = Journal.all.order('created_at DESC')
        # render :json => journals 
        render json: journal, include: [:entries]
    end

    def update
        journal = Journal.find(params[:id])
        journal.update(subject: params[:subject])
        journals = Journal.all.order('created_at DESC')
        render :json => journals 
    end

    def destroy
        journal = Journal.find(params[:id])
        journal.delete()
        journals = Journal.all.order('created_at DESC')
        render :json => journals       
    end
end
