class MeetingsController < ApplicationController
  # get
  def index
    # renders a list of meetings
  end

# get
  def new
    # displays a form to create new meetings
  end

# post
  def create
    # handle the form submission and add to db
  end

# post
  def udpate
    # lets user check off a meeting from index
  end

# patch
  def delete
    # lets a user delete a meeting IF they have NOT checked it off
    # else... they can't, you've already been there!
  end

# get
  def confirmation
    # catch-all confirmation (optional)
  end
end
