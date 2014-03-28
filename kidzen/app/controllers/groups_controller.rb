class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]

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


  # This is a function that removes a registered user from a group
  # Returns true or false indicating whether the member was removed or not
  # Time Complexity: O(1).
  # Author: Mohamed Bahgat Elrakaiby
      def remove_member(RegisteredUser r)
<<<<<<< HEAD
        r.destroy
=======
        r.delete
    unless members.include? (r)
      return false
          else
      members.delete(r)
      return true
>>>>>>> b224549433136733da9bb38da424ac7f0afc013d
      end

  # This is a function that views members of the group
  # Returns nothing
  # Time Complexity: O(n).
  # Author: Mohamed Bahgat Elrakaiby
      def view_members()
    a = []
          GroupMember.all.each {|r|
            if r.group_id == @group.id
              a.push(r.username)
            end
          }
    puts a
      end

  # This is a function that allows a group member to create a status in a group
  # Returns nothing
  # Time complexity: O(1)
  # Author: Mohamed Bahgat Elrakaiby
      def create_status(Status status)
      Status.create(group_id: @group_id, status: status)
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
end