class MemberController < ApplicationController

  before_action :authenticate_vendor!

  def index
  end
end
