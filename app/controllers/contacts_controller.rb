class ContactsController < ApplicationController
  respond_to :json, :html

  # GET /contacts
  # GET /contacts.json
  def index
    respond_with Contact.all
  end

  # GET /contacts/1.json
  def show
    respond_with Contact.find(params[:id])
  end

  # POST /contacts.json
  def create
    respond_with Contact.create(params[:contact])
  end

  # PUT /contacts/1.json
  def update
    respond_with Contact.update(params[:id], params[:contact])
  end

  # DELETE /contacts/1.json
  def destroy
    respond_with Contact.destroy(params[:id])   
  end
end
