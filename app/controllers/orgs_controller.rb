class OrgsController < ApplicationController
  # GET /orgs
  # GET /orgs.json
  def index
    @orgs = Org.all

    respond_to do |format|
      format.json { render json: @orgs }
    end
  end

  # GET /orgs/1
  # GET /orgs/1.json
  def show
    @org = Org.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @org }
    end
  end

  # GET /orgs/new
  # GET /orgs/new.json
  def new
    @org = Org.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @org }
    end
  end

  # POST /orgs
  # POST /orgs.json
  def create
    @org = Org.new(params[:org])

    respond_to do |format|
      if @org.save
        format.html { redirect_to @org, notice: 'Org was successfully created.' }
        format.json { render json: @org, status: :created, location: @org }
      else
        format.html { render action: "new" }
        format.json { render json: @org.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /orgs/1
  # PUT /orgs/1.json
  def update
    @org = Org.find(params[:id])

    respond_to do |format|
      if @org.update_attributes(params[:org])
        format.html { redirect_to @org, notice: 'Org was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @org.errors, status: :unprocessable_entity }
      end
    end
  end

  def organizations
    party_id = params[:party_id].to_i
    ranks = getRanks(party_id)
    ranks.each do |rank|
      contact(rank)
    end
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  def getRanks(party_id)
    org = Org.where(:party_id => party_id)
    ranks = org.first.ranks.order("rank")
  end

  def contact(rank)
    if(rank.contact_type_cd == "cell")
      OrgMailer.send_sms(rank.org.contact.cell).deliver
    else
      puts rank.contact_type_cd
    end
  end
end
