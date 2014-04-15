class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]
  #Start autogenerated methods
  # GET /groups
  # GET /groups.json
  def index
    @groups = Group.all
  end

  # GET /groups/1
  # GET /groups/1.json
  def show
  end

  # GET /groups/new
  def new
    @group = Group.new
  end

  # GET /groups/1/edit
  def edit
  end

  # POST /groups
  # POST /groups.json
  def create
    @group = Group.new(group_params)

    respond_to do |format|
      if @group.save
        format.html { redirect_to @group, notice: 'Group was successfully created.' }
        format.json { render action: 'show', status: :created, location: @group }
      else
        format.html { render action: 'new' }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groups/1
  # PATCH/PUT /groups/1.json
  def update
    respond_to do |format|
      if @group.update(group_params)
        format.html { redirect_to @group, notice: 'Group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
    @group.destroy
    respond_to do |format|
      format.html { redirect_to groups_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_params
      params[:group]
    end
  #End of autogenerated methods
  
  #start of my methods
    # This is a function that adds a member to the group by his name.
    # Time complexity: O(1).
    #Authors: Mohammed T. Nabih.
    def add_member_name(name)
  
    end

    # This is a function that adds a member to the group by his email.
    # Doesn't return anything.
    #Time complexity: O(n).
    #Authors: Mohammed T. Nabih.
    def add_member_email(email)
  
    end

    # This is a function that adds a member to the group by his phone number.
    # Doesn't return anything.
    # Time complexity: O(n).
    #Authors: Mohammed T. Nabih.
    def add_member_phone(phone)
  
    end

    # This is a function that allows members in the group to accept the join requests from other users.
    # Doesn't return anything.
    # Time complexity: O(1).
    #Authors: Mohammed T. Nabih.
    def accept_invitation
    
    end
    
    # This is a function that allows the user to send request to a group.
    # Doesn't return anything.
    # Time complexity: O(1).
    #Authors: Mohammed T. Nabih.
    def join_request
    
    end
  
end
